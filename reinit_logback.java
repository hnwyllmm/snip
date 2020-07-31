import ch.qos.logback.classic.LoggerContext;
import ch.qos.logback.classic.joran.JoranConfigurator;
import ch.qos.logback.core.joran.spi.JoranException;

	// 参考http://logback.qos.ch/manual/configuration.html
	LoggerContext context = (LoggerContext) LoggerFactory.getILoggerFactory();
        try {
            JoranConfigurator configurator = new JoranConfigurator();
            configurator.setContext(context);
            // Call context.reset() to clear any previous configuration, e.g. default
            // configuration. For multi-step configuration, omit calling context.reset().
            context.reset();
            URL logback = MainStart.class.getClassLoader().getResource("test-log.xml");
            configurator.doConfigure(logback);
        } catch (JoranException je) {
            // StatusPrinter will handle this
            je.printStackTrace();
        }

	// config logback listener
	// 默认logback初始化会将初始化信息打印到控制台，但是可以通过设置listener的方式控制打印的位置
	// 目前有Nop，直接忽略，还可以将它放置在内存，后续拿出来，详细参考logback代码
	// use running command parameter
	// logback支持的listener启动参数
	// -Dlogback.statusListenerClass=ch.qos.logback.core.status.NopStatusListener
	// 或者在logback.xml中配置
/*
	<configuration>
  <statusListener class="ch.qos.logback.core.status.OnConsoleStatusListener" />  

  ... the rest of the configuration file  
</configuration>
*/
