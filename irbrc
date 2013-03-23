warn '~/.irbrc loaded'

# ruby 1.8.7 compatible
require 'rubygems'
require 'irb/completion'

# load interactive editor
begin
  require 'interactive_editor'
rescue LoadError => error
  warn "Couldn't load interactive_editor: #{error}"
end

# load awesome print
begin
  require 'awesome_print'
  AwesomePrint.irb!
rescue LoadError => error
  warn "Couldn't load awesome_print: #{error}"
end

# configure irb
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:EVAL_HISTORY] = 1000
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File.expand_path('~/.irbhistory')

# load .railsrc in rails environment
railsrc_path = File.expand_path('~/.railsrc')
if((ENV['RAILS_ENV'] || defined?(Rails)) && File.exist?(railsrc_path))
  begin
    load railsrc_path
  rescue Exception => error
    warn "Couldn't load '#{railsrc_path}': #{error}"
  end
end