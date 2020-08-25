package 
{   
    import flash.display.MovieClip; 
    import flash.events.Event;

    public class Document extends MovieClip
    {
        public function Document()
        {
            addEventListener(Event.ADDED_TO_STAGE, init, false, 0, true);
        }

        private function init(e:Event):void
        {
            removeEventListener(Event.ADDED_TO_STAGE, init);     
            trace("아 집에 가고 싶다");
        }
    }
}