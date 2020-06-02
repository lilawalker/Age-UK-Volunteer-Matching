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

  def add_image
    @user = current_user
  end

  def update
    @user = current_user

    respond_to do |format|
      if @user.update(user_params)
        if user_params[:image] == nil
          format.html { redirect_to add_interests_path }
        else
          format.html { redirect_to show_path }
        end
      else
        format.html { render :add_info }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @possible_matches = User.all.where("volunteer != '#{current_user.volunteer}'")
  end

  private

  def user_params
    params.require(:user).permit(:name, :telephone, :location, :bio, :image)
  end

end
