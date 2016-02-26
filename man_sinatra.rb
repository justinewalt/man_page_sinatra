require 'sinatra'
require 'pry'

get '/' do
	erb :menu
end

get '/cp' do
	erb :cp
end

get '/ls' do
	erb :ls
end

get '/mkdir' do
	erb :mkdir
end

get '/touch' do
	erb :touch
end

get '/mv' do
	erb :mv
end

get '/search' do
	erb :search
end

post '/search_for' do
	if ['cp', 'ls', 'mkdir', 'mv', 'touch'].include?(params["search_term"])
		redirect "/#{params['search_term']}"
	else
		redirect '/search'
	end
end

not_found do
	status 404
	"not found" 
end