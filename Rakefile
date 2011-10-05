# Based on ryanb dotfiles. (https://github.com/ryanb/)

require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false

  Dir['*'].each do |file|
    next if %w[Rakefile README.rdoc].include?(file)

    filename = filename(file)
    filepath = filepath(filename)

    if File.exist?(filename)
      if File.identical?(file, filepath)
        puts "identical ~/#{filename}"
      elsif replace_all
        replace_file(file)
      else
        overwrite_file(file)
      end
    else
      link_file(file)
    end
  end
end

def filename(file)
  ".#{file.sub('.erb', '')}"
end

def filepath(filename)
  File.join(ENV['HOME'], filename)
end

def replace_file(file)
  filename = filename(file)

  system %Q{rm -rf "$HOME/#{filename}"}

  link_file(file)
end

def overwrite_file(file)
  filename = "~/#{filename(file)}"

  print "overwrite #{filename}? [ynaq] "

  case $stdin.gets.chomp
  when 'a'
    replace_all = true
    replace_file(file)
  when 'y'
    replace_file(file)
  when 'q'
    exit
  else
    puts "skipping #{filename}"
  end
end

def link_file(file)
  if file =~ /.erb$/
    filename = filename(file)
    filepath = filepath(filename)

    puts "generating ~/#{filename}"

    File.open(filepath, 'w') do |new_file|
      content = ERB.new(File.read(file)).result(binding)

      new_file.write(content)
    end
  else
    puts "linking ~/.#{file}"

    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end