gem 'fiveruns-dash-ruby'
require 'fiveruns/dash'

Fiveruns::Dash.register_recipe :sinatra, :url => 'http://dash.fiveruns.com' do |recipe|
  
  # NOTE: Captures static requests in addition to Sinatra app requests. Can't
  #       find a good way around that.
  recipe.counter :requests, :incremented_by => 'Sinatra::Application#dispatch!'
  
  recipe.time :response_time, :method => 'Sinatra::Application#dispatch!'
  
  recipe.time :render_time, :method => 'Sinatra::Application#render'
end

module Fiveruns
  
  module Dash
    
    module Sinatra
      
      def self.start(token)
        return if Fiveruns::Dash.session.reporter.started?
        Fiveruns::Dash.start(:app => token) do |config|
          config.add_recipe :ruby
          config.add_recipe :sinatra
        end
      end
      
    end
    
  end
  
end