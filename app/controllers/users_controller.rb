class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  # GET /user/edit
  def edit
    # hello
    # world
    # manh dep trai vo cung
    # xin chao
    # toi ten la Son
    # xin chao ahihi abcxyz

  end

  #PUT /user
  def update
    if @user.update(user_params)
      redirect_to root_path, notice: 'Update Profile was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_name, :phone)
    end
end
