
require 'sinatra'
require 'shotgun'
require 'data_mapper'

get '/' do
	"Hello world!"
end

get '/about' do
	"This is the about page"
end

get '/hello/:name/:city' do
	 "Hello there #{params[:name]} from #{params[:city]}"
end

get '/more/*' do
	"This is what we got: #{params[:splat]}"
end

get '/form' do
	erb :form
end

post '/form' do
	"This is what we posted: #{params[:message]}"
end

not_found do
	status 404
	"not found"
end


