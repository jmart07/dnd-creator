class RaceJoinsController < ApplicationController
  before_action :set_race_join, only: [:show]

  # GET /race_joins
  def index
    @race_joins = RaceJoin.all

    render json: @race_joins
  end

  # GET /race_joins/1
  def show
    render json: @race_join
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race_join
      @race_join = RaceJoin.find(params[:id])
    end

end
