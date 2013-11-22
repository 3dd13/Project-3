class ChallengesController < ApplicationController
  
  def index
    @user = User.find(params[:user_id])
    @challenges = params[:id] ? @user.challenges.find(params[:id].split(","))  : @user.challenges
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
end