require 'sinatra'
require 'sinatra/activerecord'

configure (:development){set :database, {adapter: "sqlite3", database: "ruby3.sqlite3"}}

require './models.rb'

get '/' do
	erb :index
end

POST '/sign_up_process' do
	@post = User.create(username: params[:email], password: params[:password])
	@post = Profile.create(fname: params[:fname], lname: params[:lname], user_id: User.find_by_username(params[:email]).id)
	redirect
	erb :signup
end


