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
    @user = User.new(
      name: params[:name],
      DOB: params[:DOB],
      email: params[:email],
      phone_number: params[:phone_number]
    )

    if @user.save
      redirect_to @user, notice: "created successfully."
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(
      name: params[:name],
      DOB: params[:DOB],
      email: params[:email],
      phone_number: params[:phone_number]
    )
      redirect_to @user, notice: "updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: "deleted successfully."
  end
end