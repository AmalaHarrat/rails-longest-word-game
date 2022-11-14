require "json"
require "open-uri"

class GamesController < ApplicationController
  def home
  end

  def new
    # je
    o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    @letters = (0...10).map { o[rand(o.length)] }
  end

  def score
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    serialized = URI.open(url).read
    result = JSON.parse(serialized)
    if result["found"]
      # uttiliser methode chars
    end
  end
end
