class UsersController < ApplicationController
    before_action :authorized, only: [:auto_login]
  
    # REGISTER
    def create
      @user = User.create(user_params)
      if @user.valid?
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token}
      else
        render json: {error: "Invalid username or password"}
      end
    end
  
    # LOGGING IN
    def login
      @user = User.find_by(email: params[:email])
  
    #   if @user && @user.authenticate(params[:password])
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token}
    #   else
    #     render json: {error: "Invalid username or password"}
    #   end
    end
  
  
    def auto_login
      render json: @user
    end
  
    private
  
    def user_params
      params.permit(:email, :password, :age)
    end
  
  end
  


# class UsersController < Devise::SessionsController
   
#     skip_before_filter :verify_authenticity_token, :only => :create
#     protect_from_forgery with: :null_session
#     # require 'jwt'

#     # def new
#     #     super
#     # end

#     # def create
#     # #     @user =  User.where(email:params[:email]).first
#     # #     if @user.valid_password?(params[:password])
#     # #        jwt=JWT.encode(
#     # #            {user_id:@user.id},
#     # #            Rails.application.secrets.secret_key_base,
#     # #            'HS256'
#     # #        )
#     # #     end
#     #     # payload = {= @user}
#     #     # # IMPORTANT: set nil as password parameter
#     #     # token = JWT.encode payload, nil, 'none', { typ: 'JWT' }
#     #     # # eyJhbGciOiJub25lIiwidHlwIjoiSldUIn0.eyJkYXRhIjoidGVzdCJ9.
#     #     # puts token
#     #     # decoded_token = JWT.decode token, nil, false
#     #     # puts decoded_token       
#     # end
#     def new
#         super
#       end
    
#       def create
#         self.resource = warden.authenticate!(auth_options)
#         set_flash_message(:notice, :signed_in) if is_navigational_format?
#         sign_in(resource_name, resource)
#         if !session[:return_to].blank?
#           redirect_to session[:return_to]
#           session[:return_to] = nil
#         else
#           respond_with resource, :location => after_sign_in_path_for(resource)
#         end
#       ends
# end
