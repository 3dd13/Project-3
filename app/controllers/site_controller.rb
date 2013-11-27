class SiteController < ApplicationController
  # before_action :is_authenticated?
  
  def index
    render 'index', layout: false
  end

  # if params[:email] == "abc@abc.com" && params[:password] == "1234"
end