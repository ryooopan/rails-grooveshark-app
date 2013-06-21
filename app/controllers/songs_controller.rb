class SongsController < ApplicationController

  def index
    @client = Grooveshark::Client.new
    @songs = client.search_songs('Nirvana')
  end

  def show
    @client = Grooveshark::Client.new
  end

end
