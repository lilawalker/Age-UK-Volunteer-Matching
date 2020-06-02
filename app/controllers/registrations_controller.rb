class RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  def after_sign_up_path_for(resource)
    "/add_info"
  end

  def add_info
    @user = current_user
  end

  def update
    @user = current_user

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to add_userinterests_path }
      else
        format.html { render :add_info }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    # params.permit(user: [:name, :telephone, :location, :bio])
    params.require(:user).permit(:name, :telephone, :location, :bio)
  end

end
