class UserHerosController < ApplicationController
  before_action :set_user_hero, only: %i[show update destroy]

  # GET /user_heros
  def index
    @user_heros = UserHero.all

    render json: @user_heros
  end

  # GET /user_heros/1
  def show
    render json: @user_hero
  end

  # POST /user_heros
  def create
    @user_hero = UserHero.new(user_hero_params)

    if @user_hero.save
      render json: @user_hero, status: :created, location: @user_hero
    else
      render json: @user_hero.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_heros/1
  def update
    if @user_hero.update(user_hero_params)
      render json: @user_hero
    else
      render json: @user_hero.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_heros/1
  def destroy
    @user_hero.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_hero
      @user_hero = UserHero.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_hero_params
      params.require(:user_hero).permit(:hero_id, :user_id)
    end
end
