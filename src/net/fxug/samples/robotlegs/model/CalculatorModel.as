package net.fxug.samples.robotlegs.model
{
    import org.robotlegs.mvcs.Actor;
    
    public class CalculatorModel extends Actor
    {
        private var _input1Str:String;
        
        public function get input1Str():String
        {
            return _input1Str;
        }
        
        public function set input1Str(value:String):void
        {
            _input1Str = value;
            dispatch(new CalculatorModelEvent(CalculatorModelEvent.INPUT1_STR_CHANGED));
        }
        
        private var _input2Str:String;
        
        public function get input2Str():String
        {
            return _input2Str;
        }
        
        public function set input2Str(value:String):void
        {
            _input2Str = value;
            dispatch(new CalculatorModelEvent(CalculatorModelEvent.INPUT2_STR_CHANGED));
        }
        
        private var _answerStr:String;
        
        public function get answerStr():String
        {
            return _answerStr;
        }
        
        public function set answerStr(value:String):void
        {
            _answerStr = value;
            dispatch(new CalculatorModelEvent(CalculatorModelEvent.ANSWER_STR_CHANGED));
        }
    }
}