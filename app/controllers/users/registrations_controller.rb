# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  after_action :set_cookies, only: [:create]
  # GET /resource/sign_up
  def new
    super
    # raise
  end

  # POST /resource
  def create
    # raise
    super
    # raise
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  def set_cookies
    # raise
    if @user.profile_type.nil?
      if session[:question_state]
        # raise
        if session[:question_state]["counter"] > 3
          @user.profile_type = "front-end"
          @user.save
        elsif session[:question_state]["counter"] < 3
          @user.profile_type = "back-end"
          @user.save
        else
          @user.profile_type = "fullstack"
          @user.save
        end
        # raise
      else
        @user.profile_type = ["fullstack","back-end","front-end"].sample
      end
    end
    # raise
  end
  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
