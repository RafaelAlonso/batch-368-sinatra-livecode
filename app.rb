require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/algumacoisa/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

post "/sendform" do
  restaurant = Restaurant.new(name: params[:name], address: params[:address], specialty: params[:specialty])
  restaurant.save
  redirect "/algumacoisa/#{restaurant.id}"
end
