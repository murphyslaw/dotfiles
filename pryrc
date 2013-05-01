warn '~/.pryrc loaded'

# Configure pry prompt

Pry.config.prompt = Pry::SIMPLE_PROMPT

# Load ~/.railsrc in rails environment

if ENV['RAILS_ENV'] || defined?(Rails)
  railsrc_path = File.expand_path('~/.railsrc')

  if File.exist?(railsrc_path)
    load railsrc_path
  end
end