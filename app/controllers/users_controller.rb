class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.phone_number = params[:phone_number]
    @user.address1 = params[:address1]
    @user.address2 = params[:address2]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip = params[:zip]
    @user.country = params[:country]

    if @user.save
      redirect_to "/users", :notice => "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.name = params[:name]
    @user.email = params[:email]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.phone_number = params[:phone_number]
    @user.address1 = params[:address1]
    @user.address2 = params[:address2]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip = params[:zip]
    @user.country = params[:country]

    if @user.save
      redirect_to "/users", :notice => "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to "/users", :notice => "User deleted."
  end
end
