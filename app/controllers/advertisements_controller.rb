class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @Advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisement = Advertisement.new
  end

  def create
    @advertisement = Post.new
    @advertisement.title = params[:advertisement][:title]
    @advertisement.text = params[:advertisement][:copy]
    @advertisement.price = params[:advertisement][:price]
# #10
    if @advertisement.save
# #11
        flash[:notice] = "Your ad was saved."
        redirect_to @advertisement
    else
# #12
        flash[:error] = "There was an error saving your ad. Please try again."
        render :new
      end
    end
end
