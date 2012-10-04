class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new(params)
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      Resque.enqueue(AvatarProcessor, @user.id, @user.key)
      redirect_to @user, notice: 'User was successfully created. Waiting for Avatar to be processed. Refresh at will'
    else
      render action: "new"
    end
  end
end
