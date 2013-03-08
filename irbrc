require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8

load File.dirname(__FILE__) + '/.railsrc' if ($0 == 'irb' && ENV['RAILS_ENV']) || ($0 == 'script/rails' && Rails.env)

puts '~/.irbrc loaded'
