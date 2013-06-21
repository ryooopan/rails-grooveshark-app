class SongsController < ApplicationController

  def index
    @client = Grooveshark::Client.new
    songs = @client.search_songs('Beatles')
    render :json => songs
  end

  def show
    @client = Grooveshark::Client.new
    url = @client.get_song_url_by_id(params[:id])
    render :json => url
  end

end
