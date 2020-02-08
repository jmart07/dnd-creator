class ClassJoinsController < ApplicationController
  before_action :set_class_join, only: [:show]

  # GET /class_joins
  def index
    @class_joins = ClassJoin.all

    render json: @class_joins
  end

  # GET /class_joins/1
  def show
    render json: @class_join
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_join
      @class_join = ClassJoin.find(params[:id])
    end

end
