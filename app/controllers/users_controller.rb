class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    # @user_chinju = User.where(name: "珍獣")
    # @user_first = User.first
    # @user_last = User.last
    # @user_2 = User.find(2)
    # @user_1_3 = User.find([1, 3])
    # @user_chinju_first = User.findby(name: "珍獣")
    # @user_chinju_first_with_error = User.findby!(name: "珍獣")

    # render json: @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    binding.pry
    @user = User.find(params[:id])
    binding.pry
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      render :show, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      render :show, status: :ok, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:title, :body)
    end

end
