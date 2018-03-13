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

    # adding unique races to appropriate race arrays for search purposes
    npc_race = @npc['race']
    npc_race_arr = npc_race.split
    if !(RaceClassArrays::AASIMAR & npc_race_arr).empty?
      RaceClassArrays::AASIMAR.push(npc_race)
    elsif !(RaceClassArrays::BUGBEAR & npc_race_arr).empty?
      RaceClassArrays::BUGBEAR.push(npc_race)
    elsif !(RaceClassArrays::DRAGONBORN & npc_race_arr).empty?
      RaceClassArrays::DRAGONBORN.push(npc_race)
    elsif !(RaceClassArrays::DWARF & npc_race_arr).empty?
      RaceClassArrays::DWARF.push(npc_race)
    elsif !(RaceClassArrays::ELF & npc_race_arr).empty?
      RaceClassArrays::ELF.push(npc_race)
    elsif !(RaceClassArrays::FIRBOLG & npc_race_arr).empty?
      RaceClassArrays::FIRBOLG.push(npc_race)
    elsif !(RaceClassArrays::FEY & npc_race_arr).empty?
      RaceClassArrays::FEY.push(npc_race)
    elsif !(RaceClassArrays::GENSAI & npc_race_arr).empty?
      RaceClassArrays::GENSAI.push(npc_race)
    elsif !(RaceClassArrays::GNOME & npc_race_arr).empty?
      RaceClassArrays::GNOME.push(npc_race)
    elsif !(RaceClassArrays::GOBLIN & npc_race_arr).empty?
      RaceClassArrays::GOBLIN.push(npc_race)
    elsif !(RaceClassArrays::TROLL & npc_race_arr).empty?
      RaceClassArrays::TROLL.push(npc_race)
    elsif !(RaceClassArrays::GOLIATH & npc_race_arr).empty?
      RaceClassArrays::GOLIATH.push(npc_race)
    elsif !(RaceClassArrays::HALFELF & npc_race_arr).empty?
      RaceClassArrays::HALFELF.push(npc_race)
    elsif !(RaceClassArrays::HALFORC & npc_race_arr).empty?
      RaceClassArrays::HALFORC.push(npc_race)
    elsif !(RaceClassArrays::HALFLING & npc_race_arr).empty?
      RaceClassArrays::HALFLING.push(npc_race)
    elsif !(RaceClassArrays::HUMAN & npc_race_arr).empty?
      RaceClassArrays::HUMAN.push(npc_race)
    elsif !(RaceClassArrays::KENKU & npc_race_arr).empty?
      RaceClassArrays::KENKU.push(npc_race)
    elsif !(RaceClassArrays::KOBOLD & npc_race_arr).empty?
      RaceClassArrays::KOBOLD.push(npc_race)
    elsif !(RaceClassArrays::LIZARDFOLK & npc_race_arr).empty?
      RaceClassArrays::LIZARDFOLK.push(npc_race)
    elsif !(RaceClassArrays::TABAXI & npc_race_arr).empty?
      RaceClassArrays::TABAXI.push(npc_race)
    elsif !(RaceClassArrays::TIEFLING & npc_race_arr).empty?
      RaceClassArrays::TIEFLING.push(npc_race)
    elsif !(RaceClassArrays::TORTLE & npc_race_arr).empty?
      RaceClassArrays::TORTLE.push(npc_race)
    elsif !(RaceClassArrays::TRITON & npc_race_arr).empty?
      RaceClassArrays::TRITON.push(npc_race)
    elsif !(RaceClassArrays::YUANTI & npc_race_arr).empty?
      RaceClassArrays::YUANTI.push(npc_race)
    elsif !(RaceClassArrays::GITH & npc_race_arr).empty?
      RaceClassArrays::GITH.push(npc_race)
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

  # If any part of the searched race is located in one of the race arrays,
  # this search returns any NPC with a race that is located in that array,
  # as well as any npc with that unique class name
  def search_by_race
    searched_race = params.require(:npc)['race']
    searched_race_arr = searched_race.split
    if !(RaceClassArrays::AASIMAR & searched_race_arr).empty?
      RaceClassArrays::AASIMAR.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::AASIMAR)

      render json: @npcs
    elsif !(RaceClassArrays::BUGBEAR & searched_race_arr).empty?
      RaceClassArrays::BUGBEAR.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::BUGBEAR)

      render json: @npcs
    elsif !(RaceClassArrays::DRAGONBORN & searched_race_arr).empty?
      RaceClassArrays::DRAGONBORN.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::DRAGONBORN)

      render json: @npcs
    elsif !(RaceClassArrays::DWARF & searched_race_arr).empty?
      RaceClassArrays::DWARF.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::DWARF)

      render json: @npcs
    elsif !(RaceClassArrays::ELF & searched_race_arr).empty?
      RaceClassArrays::ELF.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::ELF)

      render json: @npcs
    elsif !(RaceClassArrays::FIRBOLG & searched_race_arr).empty?
      RaceClassArrays::FIRBOLG.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::FIRBOLG)

      render json: @npcs
    elsif !(RaceClassArrays::FEY & searched_race_arr).empty?
      RaceClassArrays::FEY.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::FEY)

      render json: @npcs
    elsif !(RaceClassArrays::GENSAI & searched_race_arr).empty?
      RaceClassArrays::GENSAI.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::GENSAI)

      render json: @npcs
    elsif !(RaceClassArrays::GNOME & searched_race_arr).empty?
      RaceClassArrays::GNOME.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::GNOME)

      render json: @npcs
    elsif !(RaceClassArrays::GOBLIN & searched_race_arr).empty?
      RaceClassArrays::GOBLIN.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::GOBLIN)

      render json: @npcs
    elsif !(RaceClassArrays::TROLL & searched_race_arr).empty?
      RaceClassArrays::TROLL.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::TROLL)

      render json: @npcs
    elsif !(RaceClassArrays::GOLIATH & searched_race_arr).empty?
      RaceClassArrays::GOLIATH.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::GOLIATH)

      render json: @npcs
    elsif !(RaceClassArrays::HALFELF & searched_race_arr).empty?
      RaceClassArrays::HALFELF.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::HALFELF)

      render json: @npcs
    elsif !(RaceClassArrays::HALFORC & searched_race_arr).empty?
      RaceClassArrays::HALFORC.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::HALFORC)

      render json: @npcs
    elsif !(RaceClassArrays::HALFLING & searched_race_arr).empty?
      RaceClassArrays::HALFLING.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::HALFLING)

      render json: @npcs
    elsif !(RaceClassArrays::HUMAN & searched_race_arr).empty?
      RaceClassArrays::HUMAN.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::HUMAN)

      render json: @npcs
    elsif !(RaceClassArrays::KENKU & searched_race_arr).empty?
      RaceClassArrays::KENKU.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::KENKU)

      render json: @npcs
    elsif !(RaceClassArrays::KOBOLD & searched_race_arr).empty?
      RaceClassArrays::KOBOLD.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::KOBOLD)

      render json: @npcs
    elsif !(RaceClassArrays::LIZARDFOLK & searched_race_arr).empty?
      RaceClassArrays::LIZARDFOLK.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::LIZARDFOLK)

      render json: @npcs
    elsif !(RaceClassArrays::TABAXI & searched_race_arr).empty?
      RaceClassArrays::TABAXI.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::TABAXI)

      render json: @npcs
    elsif !(RaceClassArrays::TIEFLING & searched_race_arr).empty?
      RaceClassArrays::TIEFLING.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::TIEFLING)

      render json: @npcs
    elsif !(RaceClassArrays::TORTLE & searched_race_arr).empty?
      RaceClassArrays::TORTLE.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::TORTLE)

      render json: @npcs
    elsif !(RaceClassArrays::TRITON & searched_race_arr).empty?
      RaceClassArrays::TRITON.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::TRITON)

      render json: @npcs
    elsif !(RaceClassArrays::YUANTI & searched_race_arr).empty?
      RaceClassArrays::YUANTI.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::YUANTI)

      render json: @npcs
    elsif !(RaceClassArrays::GITH & searched_race_arr).empty?
      RaceClassArrays::GITH.push(searched_race)
      @npcs = Npc.where(race: RaceClassArrays::GITH)

      render json: @npcs
    else
      @npcs = Npc.where(race: searched_race)

      render json: @npcs
    end
  end

  # If any part of the searched class is located in one of the class arrays,
  # this search returns any NPC with a class that is located in that class array
  def search_by_class
    searched_class = params.require(:npc)['dnd_class']
    searched_class_arr = searched_class.split
    # checks to see if any matching values in arrays; returns false if there's
    # a matching value; returns true if no matching values.
    if !(RaceClassArrays::ARTIFICER & searched_class_arr).empty?
      RaceClassArrays::ARTIFICER.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::ARTIFICER)

      render json: @npcs
    elsif !(RaceClassArrays::BARBARIAN & searched_class_arr).empty?
      RaceClassArrays::BARBARIAN.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::BARBARIAN)

      render json: @npcs
    elsif !(RaceClassArrays::BARD & searched_class_arr).empty?
      RaceClassArrays::BARD.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::BARD)

      render json: @npcs
    elsif !(RaceClassArrays::CLERIC & searched_class_arr).empty?
      RaceClassArrays::CLERIC.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::CLERIC)

      render json: @npcs
    elsif !(RaceClassArrays::DRUID & searched_class_arr).empty?
      RaceClassArrays::DRUID.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::DRUID)

      render json: @npcs
    elsif !(RaceClassArrays::FIGHTER & searched_class_arr).empty?
      RaceClassArrays::FIGHTER.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::FIGHTER)

      render json: @npcs
    elsif !(RaceClassArrays::MONK & searched_class_arr).empty?
      RaceClassArrays::MONK.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::MONK)

      render json: @npcs
    elsif !(RaceClassArrays::MYSTIC & searched_class_arr).empty?
      RaceClassArrays::MYSTIC.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::MYSTIC)

      render json: @npcs
    elsif !(RaceClassArrays::PALADIN & searched_class_arr).empty?
      RaceClassArrays::PALADIN.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::PALADIN)

      render json: @npcs
    elsif !(RaceClassArrays::RANGER & searched_class_arr).empty?
      RaceClassArrays::RANGER.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::RANGER)

      render json: @npcs
    elsif !(RaceClassArrays::ROGUE & searched_class_arr).empty?
      RaceClassArrays::ROGUE.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::ROGUE)

      render json: @npcs
    elsif !(RaceClassArrays::SORCERER & searched_class_arr).empty?
      RaceClassArrays::SORCERER.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::SORCERER)

      render json: @npcs
    elsif !(RaceClassArrays::WARLOCK & searched_class_arr).empty?
      RaceClassArrays::WARLOCK.push(searched_class)
      @npcs = Npc.where(dnd_class: RaceClassArrays::WARLOCK )

      render json: @npcs
    elsif !(RaceClassArrays::WIZARD & searched_class_arr).empty?
      RaceClassArrays::WIZARD.push(searched_class)
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
