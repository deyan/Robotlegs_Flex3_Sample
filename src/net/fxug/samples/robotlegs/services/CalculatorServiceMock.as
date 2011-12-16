package net.fxug.samples.robotlegs.services
{
    import net.fxug.samples.robotlegs.model.CalculatorModel;
    
    import org.robotlegs.mvcs.Actor;
    
    public class CalculatorServiceMock extends Actor implements ICalculatorService
    {
        [Inject]
        public var calculatorModel:CalculatorModel;
        
        public function send(num1:Number, num2:Number):void
        {
            if (!isNaN(num1) && !isNaN(num2))
            {
                calculatorModel.answerStr = (num1 + num2).toString();
            }
            else
            {
                calculatorModel.answerStr = "";
            }
        }
    }
}