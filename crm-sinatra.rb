require_relative 'contact'
require 'sinatra'

get '/' do
  @title = "About"
  erb :index
end

get '/contacts' do
  @contacts = Contact.all
  erb :contacts
end

 get '/about' do
  redirect to ('/')
end

after do
  ActiveRecord::Base.connection.close
end
