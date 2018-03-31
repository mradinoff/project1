class AvatarsController < ApplicationController
  def new
    @avatar = Avatar.new
  end

  def edit
    @avatar = Avatar.find params[:id]
  end

  def index
    @avatar = Avatar.all
  end

  def show
    @avatar = Avatar.find params[:id]
  end

  def create
    avatar = Avatar.new avatar_params
    if avatar.save
      redirect_to root_path # it worked!
    else
      render :new
    end
  end

  def update
    avatar = Avatar.find params[:id]
    avatar.update avatar_params
    redirect_to avatar
  end

  def destroy
    avatar = Avatar.find params[:id]
    avatar.destroy
    redirect_to avatars_path
  end

  private
  def avatar_params
    params.require(:avatar).permit(:display_name, :display_photo, :interests, :dob, :location, :hiking_ability)
  end
end
