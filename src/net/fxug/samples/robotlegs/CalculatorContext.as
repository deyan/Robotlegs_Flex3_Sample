package net.fxug.samples.robotlegs
{
    import flash.display.DisplayObjectContainer;
    
    import net.fxug.samples.robotlegs.controller.SendCalculatorCommand;
    import net.fxug.samples.robotlegs.model.CalculatorModel;
    import net.fxug.samples.robotlegs.model.CalculatorModelEvent;
    import net.fxug.samples.robotlegs.services.CalculatorServiceMock;
    import net.fxug.samples.robotlegs.services.ICalculatorService;
    import net.fxug.samples.robotlegs.view.CalculatorMediator;
    
    import org.robotlegs.mvcs.Context;
    
    public class CalculatorContext extends Context
    {
        public function CalculatorContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
        {
            super(contextView, autoStartup);
        }
        
        override public function startup():void
        {
            injector.mapSingleton(CalculatorModel);
            
            mediatorMap.mapView(Calculator, CalculatorMediator);
            
            commandMap.mapEvent(CalculatorModelEvent.INPUT1_STR_CHANGED, SendCalculatorCommand);
            commandMap.mapEvent(CalculatorModelEvent.INPUT2_STR_CHANGED, SendCalculatorCommand);
            
            injector.mapSingletonOf(ICalculatorService, CalculatorServiceMock);
            
            super.startup();
        }
    }
}