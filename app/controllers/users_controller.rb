# frozen_string_literal: true

# Handles users related actions
class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  skip_before_action :require_login, only: %i[index new create]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  def create
    @user = User.new(user_params)
    @user.add_role :admin if will_be_admin

    respond_to do |format|
      if @user.save
        format.html { redirect_to :users, notice: 'User was created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        will_be_admin ? @user.add_role(:admin) : @user.remove_role(:admin)
        format.html { redirect_to @user, notice: 'User was updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    user_params = params.require(:user).permit :email,
                                                 :password,
                                                 :password_confirmation
    user_params.delete(:password) if user_params[:password].blank?
    user_params.delete(:password_confirmation) if user_params[:password_confirmation].blank?
    user_params
  end

  def will_be_admin
    @will_be_admin ||= params.require(:user).permit(:is_admin) == '1'
  end
end
