class ChangingsController < ApplicationController

  def index
    @changings = Changing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @changings }
    end
  end

  def show
    @changing = Changing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @changing }
    end
  end

  def create
    Changing.create!
    render nothing: true
  end

  def destroy
    @changing = Changing.find(params[:id])
    @changing.destroy

    respond_to do |format|
      format.html { redirect_to changings_url }
      format.json { head :no_content }
    end
  end
end
