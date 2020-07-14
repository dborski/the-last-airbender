class SearchController < ApplicationController
  def index
    @airbenders = AirbenderSearch.new.fire_nation_characters
  end 
end