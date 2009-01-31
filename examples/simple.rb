require 'rubygems'
require 'sinatra'
require 'fiveruns/dash/sinatra'

configure :production do
  Fiveruns::Dash::Sinatra.start('APP-TOKEN-HERE')
end

get '/' do
  "A simple example."
end