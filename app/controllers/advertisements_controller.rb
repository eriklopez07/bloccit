class AdvertisementsController < ApplicationController
  def index
    @advertisement = Advertisement.all
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisements = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new
    @advertisement.title = params[:advertisement][:title]
    @advertisement.text = params[:advertisement][:body]
    @advertisement.price = params[:advertisement] [:price]

    if @advertisement.save

        flash[:notice] = "Your ad was saved."
        redirect_to @advertisement
    else

        flash[:error] = "There was an error saving your ad. Please try again."
        render :new
      end
  end
end
