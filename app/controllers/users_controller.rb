class UsersController < ApplicationController
  def index
    # Read
    @users = User.all
    # @user_chinju = User.where(name: "珍獣")
    # @user_first = User.first
    # @user_last = User.last
    # @user_2 = User.find(2)
    # @user_1_3 = User.find([1, 3])
    # @user_chinju_first = User.findby(name: "珍獣")
    # @user_chinju_first_with_error = User.findby!(name: "珍獣")
  end
end
