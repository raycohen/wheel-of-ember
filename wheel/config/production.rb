Wheel.configure do
  # Minify JS and CSS
  config.pipeline.minify = true

  # Generate GZip version of files along with regular version
  config.pipeline.gzip = true

  # Generate an HTML5 Cache Manifest for offline support
  config.pipeline.manifest = true

  # Run templates through a precompiler instead of using
  # compile and runtime mode.
  config.handlebars.compiler = Iridium::Pipeline::HandlebarsFilePrecompiler

  # Run javascript code through this inline precompiler
  config.handlebars.inline_compiler = Iridium::Pipeline::InlinePrecompilerFilter

  # Swap out entire handlebars library for just the runtime
  config.dependencies.swap :handlebars, "handlebars.runtime"

  # Module format for minispade: :string or :function
  config.minispade.module_format = :function
end
