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
    @sleeping = Sleeping.new

    respond_to do |format|
      if @sleeping.save
        format.html { redirect_to @sleeping, notice: 'Sleeping was successfully created.' }
        format.json { render json: @sleeping, status: :created, location: @sleeping }
      else
        format.html { render action: "new" }
        format.json { render json: @sleeping.errors, status: :unprocessable_entity }
      end
    end
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
