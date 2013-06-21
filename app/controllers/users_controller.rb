class UsersController < ApplicationController

  def auth
    @client = Grooveshark::Client.new
    @user = @client.login(params[:username], params[:password])    
  end

  def favorites
    @client = Grooveshark::Client.new
    @user = @client.login(ENV['USERNAME'], ENV['PASSWORD'])
    songs = @user.favorites
    render :json => songs
  end

  def playlists
    @client = Grooveshark::Client.new
    @user = @client.login(ENV['USERNAME'], ENV['PASSWORD'])
    playlists = @user.playlists
    render :json => playlists
  end

end
