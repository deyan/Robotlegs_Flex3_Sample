package net.fxug.samples.robotlegs.view
{
    import flash.events.Event;
    
    import net.fxug.samples.robotlegs.model.CalculatorModel;
    import net.fxug.samples.robotlegs.model.CalculatorModelEvent;
    
    import org.robotlegs.mvcs.Mediator;
    
    public class CalculatorMediator extends Mediator
    {
        [Inject]
        public var view:Calculator;
        
        [Inject]
        public var calulatorModel:CalculatorModel;
        
        override public function onRegister():void
        {
            eventMap.mapListener(view.textInput1, Event.CHANGE, textInput1_changeHandler);
            eventMap.mapListener(view.textInput2, Event.CHANGE, textInput2_changeHandler);
            
            addContextListener(CalculatorModelEvent.ANSWER_STR_CHANGED, answerStrChangedHandler);
        }
        
        private function answerStrChangedHandler(event:Event):void
        {
            view.answerLabel.text = calulatorModel.answerStr;
        }
        
        private function textInput1_changeHandler(event:Event):void
        {
            calulatorModel.input1Str = view.textInput1.text;
        }
        
        private function textInput2_changeHandler(event:Event):void
        {
            calulatorModel.input2Str = view.textInput2.text;
        }
    }
}