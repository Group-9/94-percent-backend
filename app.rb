require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/cross_origin'

Dir[File.join('models', '**/*.rb')].each do |f|
  require_relative f
end

set :port, 3000

configure do
  enable :cross_origin
end

get '/' do
  'Hello world'
end
