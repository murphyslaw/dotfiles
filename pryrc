warn '~/.pryrc loaded'

Pry.config.prompt = Pry::SIMPLE_PROMPT

# load .railsrc in rails environment
railsrc_path = File.expand_path('~/.railsrc')
if((ENV['RAILS_ENV'] || defined?(Rails)) && File.exist?(railsrc_path))
  begin
    load railsrc_path
  rescue Exception => error
    warn "Couldn't load '#{railsrc_path}': #{error}"
  end
end