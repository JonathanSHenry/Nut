class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  @users= User.find(params[:user_id])
  if @users.update_attributes(user_params)
    flash[:notice] = "User updated"
    render 'edit'
  else
    render 'edit'
  end
end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Allergyeet!"
      redirect_to @user
      # Handle a successful save.
    else
      render 'new'
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
