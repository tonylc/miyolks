class FeedingsController < ApplicationController
  protect_from_forgery :except => :create

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
    @feeding = Feeding.new

    respond_to do |format|
      if @feeding.save
        format.html { redirect_to @feeding, notice: 'Feeding was successfully created.' }
        format.json { render json: @feeding, status: :created, location: @feeding }
      else
        format.html { render action: "new" }
        format.json { render json: @feeding.errors, status: :unprocessable_entity }
      end
    end
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
