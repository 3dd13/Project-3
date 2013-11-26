class ChallengesController < ApplicationController
  
  before_action :get_user
  before_action :get_challenge, only: [ :update, :destroy ]

  respond_to :json

  def index
    @challenges = if params[:id]
      Challenge.where("id in (?) #{@user_clause}", params[:id].split(','))
    else
      @user ? @user.challenges : Challenge.all
    end
  end
  
  def create
    challenge = if @user
      @user.challenges.new(challenge_params)
    else
      Challenge.new(challenge_params)
    end
    # @user = User.find(params[:user_id])
    # @challenge = @user.Challenge.new(challenge_params)

    if challenge.save
      head :created, location: challenge_url(challenge)
    else
      head :unprocessable_entity
    end
  end
  
  def update
    head @challenge.update(challenge_params) ? :no_content : :unprocessable_entity

    # @challenge = Challenge.find()
    # @challenge.complete!

    # render json: {}
  end
  
  def destroy
    head @challenge.destroy ? :no_content : :unprocessable_entity
  end

  protected

  def get_user
    if params[:user_id]
      head :bad_request unless @user = User.includes(:challenges).where('id = ?', params[:user_id]).take
    end
    @user_clause = @user ? "and user_id = #{@user.id}" : ""
  end

  def get_challenge
    head :not_found unless @challenge =
      Challenge.where("id = ? #{@user_clause}", params[:id]).take
  end

  def challenge_params
    params.require(:user).permit(
      :goal, :accomplish_by, :is_completed
    )
  end
end