warn '~/.irbrc loaded'

# Configure irb

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:EVAL_HISTORY] = 1000
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File.expand_path('~/.irbhistory')

# Load ~/.railsrc in rails environment

if ENV['RAILS_ENV'] || defined?(Rails)
  railsrc_path = File.expand_path('~/.railsrc')

  if File.exist?(railsrc_path) begin
    load railsrc_path
  rescue Exception => error
    warn "Couldn't load '#{railsrc_path}': #{error}"
  end
end