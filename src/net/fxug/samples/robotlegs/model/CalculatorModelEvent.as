package net.fxug.samples.robotlegs.model
{
    import flash.events.Event;
    
    public class CalculatorModelEvent extends Event
    {
        public static const INPUT1_STR_CHANGED:String = "input1StrChanged";
        public static const INPUT2_STR_CHANGED:String = "input2StrChanged";
        public static const ANSWER_STR_CHANGED:String = "answerStrChanged";
        
        public function CalculatorModelEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            super(type, bubbles, cancelable);
        }
    }
}