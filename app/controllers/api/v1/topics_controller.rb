 class Api::V1::TopicsController < Api::V1::BaseController

   before_filter :authenticate_user, except: [:index, :show]
   before_filter :authorize_user, except: [:index, :show]

   def index
   end

   def show
   end
end
