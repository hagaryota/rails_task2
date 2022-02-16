# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
   def new
    @user = User.new
   end

  # POST /resource/sign_in
   def create
    @user = User.find_by(email: params[:email], password: params[:password))
    if @user
      redirect_to :rooms_index
    else
      @error_message = "メッセージ"
      @email = params[:email]
      @password = params[:password]
      render "users/registrations#new", status: :unprocessable_entity
    end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
