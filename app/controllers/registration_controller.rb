class RegistrationController < Devise::RegistrationController

  private
   def sign_up_params
     params.require(:user).permit(:name, :email, :password, :password_confirmation)
   end

   def after_sign_up_path_for(resource)
     "/newuser"
   end

   def after_inactive_sign_up_path_for(resource)
     "/newuser"
   end
end
