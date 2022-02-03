class Api::V1::UsersController < ApiController
  skip_before_action :authenticate_user!, only: [:create]

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end