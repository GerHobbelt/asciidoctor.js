%x(
  var platform, engine, framework, ioModule;

  if (typeof moduleConfig === 'object' && typeof moduleConfig.runtime === 'object') {
    var runtime = moduleConfig.runtime;
    platform = runtime.platform;
    engine = runtime.engine;
    framework = runtime.framework;
    ioModule = runtime.ioModule;
  }
  ioModule = ioModule || 'java_nio';
  platform = platform || 'java';
  engine = engine || 'graalvm';
  framework = framework || '';
)

JAVASCRIPT_IO_MODULE = %x(ioModule)
JAVASCRIPT_PLATFORM = %x(platform)
JAVASCRIPT_ENGINE = %x(engine)
JAVASCRIPT_FRAMEWORK = %x(framework)

require 'asciidoctor/js/opal_ext/graalvm/file'
require 'asciidoctor/js/opal_ext/graalvm/dir'
