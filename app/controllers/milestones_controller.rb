class MilestonesController < ApplicationController
  
  def index
    @user = User.includes(:challenges => [ :milestones ]).find(params[:user_id])
    @challenge = @user.challenges.find(params[:challenge_id])
    @milestones = params[:id] ? @challenge.milestones.where('id in (?)', params[:id].split(","))  : @challenge.milestones
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
end