require "open-uri"

class FlatsController < ApplicationController

  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.parse(url).read)
  end

  def show
    id = params[:id].to_i
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats = JSON.parse(URI.parse(url).read)
    @flat = flats.select {|flat| flat['id'] == id}.first
  end
end
