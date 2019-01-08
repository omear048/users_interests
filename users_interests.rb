# users.rb
require "yaml"
require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'

before do
  @users = YAML.load_file("users.yaml")
end


helpers do 
  def count_interests(parameter)
    total_users = 0
    total_interests = 0

    parameter.each do |key, value_hash|
      total_users += 1
      total_interests += value_hash[:interests].count
    end

    "There are #{total_users} users with a total of #{total_interests} interests"
  end
end


get "/" do
  redirect "/user" 
end

get "/user" do
  erb :user
end

get "/users/:name" do
  @name = params[:name]
  erb :users
end