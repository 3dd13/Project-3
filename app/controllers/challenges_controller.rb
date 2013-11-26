class ChallengesController < ApplicationController
  
  respond_to :json

  def index
    @user = User.find(params[:user_id])
    @challenges = params[:id] ? @user.challenges.where('id in (?)', params[:id].split(","))  : @user.challenges
  end
  
  def create
  end
  
  def update
    @challenge = Challenge.find()
    @challenge.complete!

    render json: {}
  end
  
  def destroy
  end
end