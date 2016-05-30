class Recipe < ActiveRecord::Base
  include HTTParty
  #default_options.update(verify: false)
 # ENV["FOOD2FORK_KEY"] = '87353b1ef5e1060ef5403a8bb9619741'
  #ENV["FOOD2FORK_SERVER_AND_PORT"] = 'http://food2fork.com'
  #key_value = ENV['FOOD2FORK_KEY']
  #ENV["FOOD2FORK_SERVER_AND_PORT"] = 'http://food2fork.com'
  #base_uri "http://#{hostport}/api/search"
  #default_params key: key_value
  #format :json

  ENV["FOOD2FORK_SERVER_AND_PORT"] = 'http://food2fork.com'
  base_uri "http://food2fork.com/api/search"
  ENV["FOOD2FORK_KEY"] = '87353b1ef5e1060ef5403a8bb9619741'
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json
  def self.for term
    get("", query: { q: term})['recipes']
  end

end