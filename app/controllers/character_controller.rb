# Controller for the character pages of this site
class CharacterController < ApplicationController
  layout 'standard'

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
    @races = Race.all
    @categories = Category.all
  end

  def create
    character_params = new_character_params
    @character = Character.new(character_params)
    @character.race_id = character_params[:race_id].to_i
    @character.category_id = character_params[:category_id].to_i
    @character.level = 1
    @character.curHP = character_params[:maxHP]


    if @character.save
      redirect_to action: 'show', id: @character
    else
      @races = Race.all
      @categories = Category.all
      render action: 'new'
    end

  end

  def new_character_params
    params.require(:character).permit(:name, :alignment1, :alignment2, :race_id, :category_id, :strRoll, :dexRoll, :conRoll, :perRoll, :intRoll, :wisRoll, :chrRoll, :stlRoll, :maxHP)
  end

  def edit
    @character = Character.find(params[:id])
    @races = Race.all
    @categories = Category.all
  end

  def update
    @character = Character.find(params[:id])
    character_params = update_character_params

    if @character.update_attributes(character_params)
      redirect_to action: 'show', id: @character
    else
      @races = Race.all
      @categories = Category.all
      render action: 'edit'
    end

  end

  def update_character_params
    params.require(:character).permit(:name, :strRoll, :dexRoll, :conRoll, :perRoll, :intRoll, :wisRoll, :chrRoll, :stlRoll, :maxHP)
  end

  def delete
    Character.find(params[:id]).destroy
    redirect_to action: 'index'
  end

end
