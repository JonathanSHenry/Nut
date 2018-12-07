class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper

    def search
        @q = Restaurant.search(params[:q])
    end
    
end
