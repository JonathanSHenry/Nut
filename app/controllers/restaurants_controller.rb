class RestaurantsController < ApplicationController
    before_action :logged_in?, only: [:create, :destroy]
    
    def create
        @restaurant = current_user.restaurants.build(restaurant_params)
        if @restaurant.save
            flash[:success] = "Restaurant created"
            redirect_to all_restaurants_url
        # Handle a successful save.
        else
            render 'static_pages/home'
        end
    end

    def new
        @restaurant = Restaurant.new
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    before_action :set_search

    def set_search
        @search=Restaurant.search(params[:q])
    end

    def index
        @q = Restaurant.ransack(params[:q])
        @restaurants = @q.result(distinct: true)
        @restaurants = Restaurant.paginate(page: params[:page])
    end

    def destroy
        Restaurant.find(params[:id]).destroy
        flash[:success] = "Restaurant deleted"
        redirect_to all_restaurants_url
    end

    private

    def restaurant_params
      params.require(:restaurant).permit(:description, :menu, :name, :peanut, :gluten, :dairy, :egg, :soy, :shellfish)
    end
    
end
