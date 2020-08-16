#[derive(Debug)]
struct Message(String);

impl From<&str> for Message {
	fn from(source: &str) -> Message {
		Message(source.to_owned())
	}
}

fn main() {
	let message: Message = "i want go home".into();
	println!("{:#?}", message);
}
