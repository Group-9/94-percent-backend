require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/cross_origin'
require 'json'
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

get '/level/:id' do
  content_type :json
  level = Level.find_by_id(params[:id])
  if level
    level.as_json(include: { questions: { only: [:id,:text] } }).to_json
  else
    status 404
    'Not found'
  end
end

get '/question' do
  content_type :json
  Question.all.as_json(include: { answers: { only: [:id, :percent, :text] } }).to_json
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

post '/createUser' do
  content_type :json
  payload = JSON.parse(request.body.read, symbolize_names: true)

  age = payload[:age].to_i
  gender = payload[:gender].to_i
  education = payload[:education].to_i
  newUser = User.create({ age: age, gender: gender, education: education })
  newUser.as_json.to_json


end

post '/createEntry' do
  content_type :json
  payload = JSON.parse(request.body.read, symbolize_names: true)

  question_id = payload[:question_id].to_i
  user_id = payload[:user_id].to_i
  text = payload[:text]
  newEntry = Entry.create({ question_id: question_id, user_id: user_id, text: text })
  newEntry.as_json.to_json


end

get '/user' do
  content_type :json
  User.all.as_json.to_json
end

get '/user/:id' do
  content_type :json
  user = User.find_by_id(params[:id])
  if user
    User.all.as_json.to_json
  else
    status 404
    'Not found'
  end
end
