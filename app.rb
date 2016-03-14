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
  '94% Server'
end

get '/level' do
  content_type :json
  Level.all.as_json(include: { questions: { only: [:id, :text] } }).to_json
end

get '/question/:id' do
  content_type :json
  question = Question.find_by_id(params[:id])
  if question
    question.as_json(include: { answers: { only: [:id, :percent, :text] } }).to_json
  else
    status 404
    'Not found'
  end
end
