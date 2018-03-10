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
    @npcs = Npc.where(dnd_class: searched_class)

    render json: @npcs
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
    @creator = User.find_by(user_name: searched_creator)
    @npcs = @creator.npcs

    render json: @npcs
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
