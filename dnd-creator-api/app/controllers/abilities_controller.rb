class AbilitiesController < ApplicationController
  before_action :set_ability, only: [:show]

  # GET /abilities
  def index
    @abilities = Ability.all

    render json: @abilities
  end

  # GET /abilities/1
  def show
    render json: @ability
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ability
      @ability = Ability.find(params[:id])
    end

end
