require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require 'irbtools/configure'

load File.dirname(__FILE__) + '/.railsrc' if ($0 == 'irb' && ENV['RAILS_ENV']) || ($0 == 'script/rails' && Rails.env)

Irbtools.welcome_message = "Welcome murphyslaw, you are using #{Irbtools.shell_name} #{RUBY_DESCRIPTION}. IRB is ready to roll..."

Irbtools.start