class SleepingsController < ApplicationController

  def index
    @sleepings = Sleeping.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sleepings }
    end
  end

  def show
    @sleeping = Sleeping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sleeping }
    end
  end

  def create
    Sleeping.create!
    render nothing: true
  end

  def destroy
    @sleeping = Sleeping.find(params[:id])
    @sleeping.destroy

    respond_to do |format|
      format.html { redirect_to sleepings_url }
      format.json { head :no_content }
    end
  end
end
