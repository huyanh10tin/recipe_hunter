# require 'httparty'
# require 'pp'

class Recipe
	include HTTParty
	ENV["FORK2FOOD_KEY"] = "35266a74b902afca9b63150995cdcd0e"
	default_params key: ENV["FORK2FOOD_KEY"]
	
    hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
    base_uri "http://#{hostport}/api"
    format :json
    def self.for keyword
    	get("/search", query: {q: keyword})["recipes"]
    end
end
# puts Recipe.for("chocolate")