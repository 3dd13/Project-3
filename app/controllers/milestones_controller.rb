class MilestonesController < ApplicationController
  
  # before_action :get_user
  # before_action :get_challenge
  # before_action :get_milestone, only: [ :update, :destroy, :complete ]

  respond_to :json

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



  protected

  # def get_user
  #   if params[:user_id]
  #     head :bad_request unless @user = User.includes(:challenges).where('id = ?', params[:user_id]).take
  #   end
  #   @user_clause = @user ? "and user_id = #{@user.id}" : ""
  # end

  # def get_challenge
  #   head :not_found unless @challenge =
  #     Challenge.where("id = ? #{@user_clause}", params[:id]).take
  # end

  # def challenge_params
  #   params.require(:challenge).permit(
  #     :goal, :accomplish_by, :is_completed
  #   )
  # end
end