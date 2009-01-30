begin
  require 'jeweler'
  
  Jeweler::Tasks.new do |s|
    s.name = 'dash-sinatra'
    s.rubyforge_project = 'fiveruns'
    s.summary = 'Fiveruns Dash recipe for Sinatra'
    s.email = 'dev@fiveruns.com'
    s.homepage = 'http://github.com/fiveruns/dash-sinatra'
    s.description = 'Provides an API to send metrics from Sinatra applications to the FiveRuns Dash service'
    s.authors = ['FiveRuns Development Team']
    s.files = FileList['README.rdoc', 'Rakefile', 'version.yml', '{lib}/**/*']
    s.add_dependency 'fiveruns-dash-ruby', '>= 0.7.1'
  end
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com" 
end
