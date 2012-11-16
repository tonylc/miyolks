class FeedingSchedulesController < ApplicationController

  def index
    @feedings = FeedingSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feedings }
    end
  end

  def show
    @feeding = FeedingSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feeding }
    end
  end

  def create
    FeedingSchedule.create!
    render nothing: true
  end

  def destroy
    @feeding = FeedingSchedule.find(params[:id])
    @feeding.destroy

    respond_to do |format|
      format.html { redirect_to feedings_url }
      format.json { head :no_content }
    end
  end
end
