class RaceJoinsController < ApplicationController
  before_action :set_race_join, only: [:show, :update, :destroy]

  # GET /race_joins
  def index
    @race_joins = RaceJoin.all

    render json: @race_joins
  end

  # GET /race_joins/1
  def show
    render json: @race_join
  end

  # POST /race_joins
  def create
    @race_join = RaceJoin.new(race_join_params)

    if @race_join.save
      render json: @race_join, status: :created, location: @race_join
    else
      render json: @race_join.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /race_joins/1
  def update
    if @race_join.update(race_join_params)
      render json: @race_join
    else
      render json: @race_join.errors, status: :unprocessable_entity
    end
  end

  # DELETE /race_joins/1
  def destroy
    @race_join.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race_join
      @race_join = RaceJoin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def race_join_params
      params.require(:race_join).permit(:character_id, :race_id)
    end
end
