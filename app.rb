require 'sinatra'
require 'sinatra/activerecord'

Dir[File.join('models', '**/*.rb')].each do |f|
  require_relative f
end

set :port, 3000

get '/' do
  'Hello world'
end
