class PagesController < ApplicationController
  def home
    @users = User.all
    @games = Game.all
  end

  def add_result
    option_id = User.find_by_name(params[:option_name]).id
    Result.create( :user_name => params[:option_name],
      :result => params[:option_result],
      :game => params[:option_game], :user_id => option_id )
    redirect_to root_path
  end

  def add_user
    flash[:notice] = "Successfully!"
    User.create(:name => params[:name])
    redirect_to root_path
  end

  def add_game
    flash[:notice] = "Successfully!"
    Game.create(:name => params[:game_name])
    redirect_to root_path
    # dont forget push user_id from User.id
  end

  def destroy
    user = User.find(params[:delete_user])
    user.destroy
    flash[:success] = "User destroyed."
    redirect_to root_path
  end

end
