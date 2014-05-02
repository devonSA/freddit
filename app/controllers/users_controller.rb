class UsersController < Devise::RegistrationsController
  def new
    super
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to posts_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)

  end
end
