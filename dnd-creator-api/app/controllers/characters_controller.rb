class CharactersController < ApplicationController
  # before_action :set_character

  # GET /characters
  def index
    p "Character index route accessed"

    @characters = Character.all
    render json: @characters.to_json(:include => [:races, :char_classes])
  end

  # GET /characters/1
  def show
    p "Character show route accessed"

    set_character
    render json: @character.to_json(:include => [:races, :char_classes])
  end

  # POST /characters
  def create
    p "Character create route accessed"

    # Is using multiple private params methods appropriate?
    # Is it safe to create directly or should .save be used?
    @character = Character.create(character_params)
    @race_join = @character.race_joins.create(race_joins_params)
    @class_join = @character.class_joins.create(class_joins_params)

    render json: @character.to_json(:include => [:races, :char_classes]), status: :created, location: @character

  end

  # PATCH/PUT /characters/1
  def update
    p "Character update route accessed"

    set_character
    if @character.update(character_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1 -- returns character deleted
  def destroy
    p "Character destroy route accessed"

    set_character
    render json: @character.destroy()
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def character_params
      p "Params are..."
      p params
      # params.permit!
      params.require(:character).permit(
        :name,
        :strength,
        :dexterity,
        :constitution,
        :intelligence,
        :wisdom,
        :charisma,
      )
    end

    def race_joins_params
      params.require(:race_join).permit(:race_id)
    end

    def class_joins_params
      params.require(:class_join).permit(:char_class_id)
    end
end
