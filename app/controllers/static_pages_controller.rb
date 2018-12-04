class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def create_restaurant
  end

  def search  
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @results = Restaurant.all.where("lower(name) LIKE :search", search: @parameter) # change to match restaurants micropost database setup, possibly tag items
    end  
  end

  def login
  end
end
