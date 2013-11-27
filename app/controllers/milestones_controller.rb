class MilestonesController < ApplicationController
  def complete
    @milestone = Milestone.find(params[:id])
    @milestone.complete!

    head :no_content
  end
end