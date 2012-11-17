class SleepingSchedulesController < ApplicationController

  def new
    @sleeping = SleepingSchedule.new
  end

  def index
    @sleepings = SleepingSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sleepings }
    end
  end

  def show
    @sleeping = SleepingSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sleeping }
    end
  end

  def create
    SleepingSchedule.create!
    render nothing: true
  end

  def edit
    @sleeping = SleepingSchedule.find(params[:id])
  end

  def end_sleep
    SleepingSchedule.last.update_attribute(:end, DateTime.now)
    render nothing: true
  end

  def destroy
    @sleeping = SleepingSchedule.find(params[:id])
    @sleeping.destroy

    respond_to do |format|
      format.html { redirect_to sleepings_url }
      format.json { head :no_content }
    end
  end
end
