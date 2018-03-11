# frozen_string_literal: true

# require '/Users/Kayla/Desktop/Nick Programming Folder/Project #2 - NPC Organizer/API - NPC Organizer/db/race_class_arrays.rb'
require_relative '../../db/race_class_arrays.rb'

class NpcsController < ProtectedController
  before_action :set_npc, only: %i[update destroy]

  # GET /npcs
  def index
    @npcs = Npc.all

    render json: @npcs
  end

  # GET /npcs/1
  def show
    # adding if
    if params[:id] == 'search-by-name'
      search_by_name
    elsif params[:id] == 'search-by-race'
      search_by_race
    elsif params[:id] == 'search-by-class'
      search_by_class
    elsif params[:id] == 'search-by-challenge-rating'
      search_by_challenge_rating
    elsif params[:id] == 'search-by-level'
      search_by_level
    elsif params[:id] == 'search-by-creator'
      search_by_creator
    else
      @npc = Npc.find(params[:id])

      render json: @npc
    end
  end

  # POST /npcs
  def create
    @npc = current_user.npcs.build(npc_params)

    if @npc.save
      render json: @npc, status: :created
    else
      render json: @npc.errors, status: :unprocessable_entity
    end

    # adding unique classes to appropriate class arrays for search purposes
    npc_class = @npc['dnd_class']
    npc_class_arr = npc_class.split
    if !(RaceClassArrays::ARTIFICER & npc_class_arr).empty?
      RaceClassArrays::ARTIFICER.push(npc_class)
    elsif !(RaceClassArrays::BARBARIAN & npc_class_arr).empty?
      RaceClassArrays::BARBARIAN.push(npc_class)
    elsif !(RaceClassArrays::BARD & npc_class_arr).empty?
      RaceClassArrays::BARD.push(npc_class)
    elsif !(RaceClassArrays::CLERIC & npc_class_arr).empty?
      RaceClassArrays::CLERIC.push(npc_class)
    elsif !(RaceClassArrays::DRUID & npc_class_arr).empty?
      RaceClassArrays::DRUID.push(npc_class)
    elsif !(RaceClassArrays::FIGHTER & npc_class_arr).empty?
      RaceClassArrays::FIGHTER.push(npc_class)
    elsif !(RaceClassArrays::MONK & npc_class_arr).empty?
      RaceClassArrays::MONK.push(npc_class)
    elsif !(RaceClassArrays::MYSTIC & npc_class_arr).empty?
      RaceClassArrays::MYSTIC.push(npc_class)
    elsif !(RaceClassArrays::PALADIN & npc_class_arr).empty?
      RaceClassArrays::PALADIN.push(npc_class)
    elsif !(RaceClassArrays::RANGER & npc_class_arr).empty?
      RaceClassArrays::RANGER.push(npc_class)
    elsif !(RaceClassArrays::ROGUE & npc_class_arr).empty?
      RaceClassArrays::ROGUE.push(npc_class)
    elsif !(RaceClassArrays::SORCERER & npc_class_arr).empty?
      RaceClassArrays::SORCERER.push(npc_class)
    elsif !(RaceClassArrays::WARLOCK & npc_class_arr).empty?
      RaceClassArrays::WARLOCK.push(npc_class)
    elsif !(RaceClassArrays::WIZARD & npc_class_arr).empty?
      RaceClassArrays::WIZARD.push(npc_class)
    end
  end

  # PATCH/PUT /npcs/1
  def update
    if @npc.update(npc_params)
      render json: @npc
    else
      render json: @npc.errors, status: :unprocessable_entity
    end
  end

  # DELETE /npcs/1
  def destroy
    @npc.destroy
  end

  def search_by_name
    searched_name = params.require(:npc)['name']
    @npcs = Npc.where(name: searched_name)

    render json: @npcs
  end

  def search_by_race
    searched_race = params.require(:npc)['race']
    @npcs = Npc.where(race: searched_race)

    render json: @npcs
  end

  def search_by_class
    searched_class = params.require(:npc)['dnd_class']
    searched_class_arr = searched_class.split
    # checks to see if any matching values in arrays; returns false if there's
    # a matching value; returns true if no matching values.
    if !(RaceClassArrays::ARTIFICER & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::ARTIFICER)

      render json: @npcs
    elsif !(RaceClassArrays::BARBARIAN & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::BARBARIAN)

      render json: @npcs
    elsif !(RaceClassArrays::BARD & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::BARD)

      render json: @npcs
    elsif !(RaceClassArrays::CLERIC & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::CLERIC)

      render json: @npcs
    elsif !(RaceClassArrays::DRUID & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::DRUID)

      render json: @npcs
    elsif !(RaceClassArrays::FIGHTER & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::FIGHTER)

      render json: @npcs
    elsif !(RaceClassArrays::MONK & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::MONK)

      render json: @npcs
    elsif !(RaceClassArrays::MYSTIC & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::MYSTIC)

      render json: @npcs
    elsif !(RaceClassArrays::PALADIN & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::PALADIN)

      render json: @npcs
    elsif !(RaceClassArrays::RANGER & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::RANGER)

      render json: @npcs
    elsif !(RaceClassArrays::ROGUE & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::ROGUE)

      render json: @npcs
    elsif !(RaceClassArrays::SORCERER & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::SORCERER)

      render json: @npcs
    elsif !(RaceClassArrays::WARLOCK & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::WARLOCK )

      render json: @npcs
    elsif !(RaceClassArrays::WIZARD & searched_class_arr).empty?
      @npcs = Npc.where(dnd_class: RaceClassArrays::WIZARD)

      render json: @npcs
    else
    @npcs = Npc.where(dnd_class: searched_class)

    render json: @npcs
    end
  end

  def search_by_challenge_rating
    searched_cr = params.require(:npc)['challenge_rating']
    @npcs = Npc.where(challenge_rating: searched_cr)

    render json: @npcs
  end

  def search_by_level
    searched_level = params.require(:npc)['level']
    @npcs = Npc.where(level: searched_level)

    render json: @npcs
  end

  def search_by_creator
    searched_creator = params.require(:credentials)['user_name']
    if User.find_by(user_name: searched_creator)
      @creator = User.find_by(user_name: searched_creator)
      @npcs = @creator.npcs

      render json: @npcs
    else
      render json: @npc.errors, status: :unprocessable_entity
    end
    # if @npc.update(npc_params)
    #   render json: @npc
    # else
    #   render json: @npc.errors, status: :unprocessable_entity
    # end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_npc
    @npc = current_user.npcs.find(params[:id])
  end

  # Only allow a trusted parameter; i.e., "white-list" through.
  def npc_params
    params.require(:npc).permit(:name, :race, :challenge_rating, :traits,
                                :notes, :private, :dnd_class, :HP, :AC,
                                :ability_modifiers, :spells_abilities,
                                :items, :level)
  end
end
