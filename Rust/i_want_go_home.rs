struct Message(String);

impl std::fmt::Debug for Message {
	fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
		f.write_str(&format!(r#""{}""#, self.0))
	}
}

impl From<&str> for Message {
	fn from(source: &str) -> Message {
		Message(source.to_owned())
	}
}

impl From<String> for Message {
	fn from(source: String) -> Message {
		Message(source)
	}
}

impl From<Message> for String {
	fn from(source: Message) -> String {
		source.0
	}
}

struct MessageBuilder(String);

impl MessageBuilder {
	fn new () -> Self {
		MessageBuilder(String::new())
	}

	fn add<T: Into<String>>(mut self, message: T) -> Self {
		self.0.push_str(&message.into());
		self
	}

	fn add_char(mut self, message: char) -> Self {
		self.0.push(message);
		self
	}

	fn add_str(mut self, message: &str) -> Self {
		self.0.push_str(message);
		self
	}

	fn add_string(mut self, message: String) -> Self {
		self.0.push_str(&message);
		self
	}

	fn finish(self) -> Message {
		Message(self.0)
	}
}

struct Place(String);

impl Place {
	fn new (place: String) -> Self {
		Place(place)
	}
}

impl From<Place> for String {
	fn from(source: Place) -> String {
		source.0
	}
}

fn main() {
	let message: Message = "i want go home".into();
	println!("{:#?}", message);

	let message: Message = "i want go home".to_string().into();
	println!("{:#?}", message);

	let message: String = message.into();
	println!("{:#?}", message);

	let message = MessageBuilder::new()
		.add_char('i')
		.add_str("want")
		.add_string("go".to_owned())
		.add(Place::new("home".to_owned()))
		.finish();
	println!("{:#?}", message);
}
