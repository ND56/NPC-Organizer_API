class NpcsController < ProtectedController
  before_action :set_npc, only: %i[update destroy]

  # GET /npcs
  def index
    @npcs = Npc.all

    render json: @npcs
  end

  # GET /npcs/1
  def show
    @npc = Npc.find(params[:id])

    render json: @npc
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

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_npc
    @npc = current_user.npcs.find(params[:id])
  end

  # Only allow a trusted parameter; i.e., "white-list" through.
  def npc_params
    params.require(:npc).permit(:name, :race, :challenge_rating, :stats,
                                :traits, :notes, :private, :dnd_class)
  end
end
