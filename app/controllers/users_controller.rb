class UsersController < ApplicationController

  def auth
    @client = Grooveshark::Client.new
    @user = @client.login(params[:username], params[:password])    
  end

  def favorites
    songs = @user.favorites
    render :json => songs
  end

end
