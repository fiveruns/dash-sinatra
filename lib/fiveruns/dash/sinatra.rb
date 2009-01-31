require 'fiveruns/dash'

Fiveruns::Dash.logger.level = Logger::INFO

Fiveruns::Dash.register_recipe :sinatra, :url => 'http://dash.fiveruns.com' do |recipe|
  # NOTE: Captures static requests in addition to Sinatra app requests. Can't
  #       find a good way around that.
  recipe.counter :requests, :incremented_by => 'Sinatra::Application#dispatch!'
  recipe.time :response_time, :method => 'Sinatra::Application#dispatch!'
  recipe.time :render_time, :method => 'Sinatra::Application#render'
end

module Fiveruns::Dash::Sinatra
  
  def self.start(token)
    return if Fiveruns::Dash.session.reporter.started?
    Fiveruns::Dash.start(:app => token) do |config|
      config.add_recipe :sinatra
      config.add_recipe :ruby
    end
  end
  
end