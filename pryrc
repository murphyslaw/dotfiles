warn '~/.pryrc loaded'

# Configure pry prompt

Pry.config.prompt = Pry::SIMPLE_PROMPT

# Load ~/.railsrc in rails environment

if ENV['RAILS_ENV'] || defined?(Rails)
  railsrc_path = File.expand_path('~/.railsrc')

  if File.exist?(railsrc_path) begin
    load railsrc_path
  rescue Exception => error
    warn "Couldn't load '#{railsrc_path}': #{error}"
  end
end