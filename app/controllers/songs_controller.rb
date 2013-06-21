class SongsController < ApplicationController

  def index
    @client = Grooveshark::Client.new
    if params[:query]
      songs = @client.search_songs(params[:query])
    else
      songs = @client.search_songs('Beatles')
    end
    render :json => songs
  end

  def show
    @client = Grooveshark::Client.new
    url = @client.get_song_url_by_id(params[:id])
    redirect_to url
#    render :json => url
  end

end
