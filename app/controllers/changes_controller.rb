class ChangesController < ApplicationController

  def index
    @changings = Change.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @changings }
    end
  end

  def show
    @changing = Change.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @changing }
    end
  end

  def create
    Change.create!(params[:change])
    redirect_to root_path
  end

  def destroy
    @changing = Change.find(params[:id])
    @changing.destroy

    respond_to do |format|
      format.html { redirect_to changings_url }
      format.json { head :no_content }
    end
  end
end
