Wheel.configure do
  # Minify JS and CSS
  config.pipeline.minify = false

  # Module format for minispade: :string or :function
  config.minispade.module_format = :string
end
