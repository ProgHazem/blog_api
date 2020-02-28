class Users::RegistrationsController < DeviseTokenAuth::RegistrationsController
  def sign_up_params
    params.permit(
        :email, :password, :name, :image
    )
  end
end