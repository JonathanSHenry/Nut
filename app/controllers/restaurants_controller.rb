class RestaurantsController < ApplicationController
    
    def index
        @restaurants = Restaurant.paginate(page: params[:page])
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def new
        @restaurant = Restaurant.new
        #restaurant.user = user.name
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        if @restaurant.save
            redirect_to @restaurant
        # Handle a successful save.
        else
            render 'new'
        end
    end

    private
        def restaurant_params
            params.require(:restaurant).permit(:name, :description, :menu,
                                                :peanut, :gluten, :dairy,
                                                :egg, :soy, :shellfish)
        end
end