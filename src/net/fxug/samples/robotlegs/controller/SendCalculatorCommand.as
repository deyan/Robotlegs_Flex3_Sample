package net.fxug.samples.robotlegs.controller
{
    import net.fxug.samples.robotlegs.model.CalculatorModel;
    import net.fxug.samples.robotlegs.services.ICalculatorService;
    
    import org.robotlegs.mvcs.Command;
    
    public class SendCalculatorCommand extends Command
    {
        [Inject]
        public var calculatorModel:CalculatorModel;
        
        [Inject]
        public var calculatorService:ICalculatorService;
        
        override public function execute():void
        {
            calculatorService.send(Number(calculatorModel.input1Str), Number(calculatorModel.input2Str));
        }
    }
}