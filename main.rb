require 'sinatra'
require 'sinatra/reloader'

=begin
get '/hello/:name' do
  "hello #{params[:name]}"
end

get '/hello/:name' do |n|
  "hello #{n}"
end

get '/hello/:fname/:lname' do |f,l|
  "hello #{f} #{l}"
end

get '/hello/:fname/:lname' do |f,l|
  "hello #{f} #{l}"
end

get %r{/users/([0-9]*)} do |i|
  "user id = #{i}"
end
  
get '/' do
  erb :index
end

=end

get '/:name' do |n|
  @name = n
  @title = "SinatraTutorial"
  erb :index
end
