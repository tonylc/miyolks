class FeedingsController < ApplicationController

  def index
    @feedings = Feeding.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feedings }
    end
  end

  def show
    @feeding = Feeding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feeding }
    end
  end

  def create
    Feeding.create!
    render status: 200, nothing: true and return
  end

  def destroy
    @feeding = Feeding.find(params[:id])
    @feeding.destroy

    respond_to do |format|
      format.html { redirect_to feedings_url }
      format.json { head :no_content }
    end
  end
end
