class RacesController < ApplicationController
  before_action :set_race, only: [:show]

  # GET /races
  def index
    @races = Race.all

    render json: @races
  end

  # GET /races/1
  def show
    render json: @race
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race
      @race = Race.find(params[:id])
    end

end
