class Api::V1::UsersController < ApiController
  skip_before_action :authenticate_user!, only: [:create]
  
  def create
    user = User.create(user_params)
    if user.save
        render json: { token: JsonWebToken.encode(sub: user.id) }, status: 200
    else
      render json: { message: user.errors.full_messages }, status: 400
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end