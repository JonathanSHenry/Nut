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

    
    def search  
        if params[:search].blank?  
            redirect_to(root_path, alert: "Empty field!") and return  
        else  
            @parameter = restaurant_params[:search].downcase  
            @results = Restaurant.all.where("lower(name) LIKE :search", search: @parameter) # change to match restaurants micropost database setup, possibly tag items
        end  
    end

    def index
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
