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

    def index
        @restaurants = Restaurant.paginate(page: params[:page])
        if params[:restaurant]
            @restaurant = Restaurant.where('restaurant LIKE ?', "%#{params[:restaurant]}%")
        else
            @restaurant = Restaurant.all
        end
    end
    # def index
    #     @restaurants = Restaurant.search(params[:term])
    #     @restaurants = Restaurant.paginate(page: params[:page])
    # end
    def self.search(search)
        if search
            name = Restaurant.find_by(name: search)
            if name
                self.where(restaurant_name: name)
            else
                Restaurant.all
            end
        else
            Restaurant.all
        end
    end

    def destroy
        Restaurant.find(params[:id]).destroy
        flash[:success] = "Restaurant deleted"
        redirect_to all_restaurants_url
    end

    private

    def restaurant_params
      params.require(:restaurant).permit(:description, :menu, :name, :peanut, :gluten, :dairy, :egg, :soy, :shellfish, :search)
    end
    
end
