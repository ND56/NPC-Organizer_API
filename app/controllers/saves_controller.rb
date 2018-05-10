class SavesController < ApplicationController
  before_action :set_safe, only: [:show, :update]

  # GET /saves
  def index
    @saves = Safe.all

    render json: @saves
  end

  # GET /saves/1
  def show
    render json: @safe
  end

  # POST /saves
  # I need to make it so if an NPC is already saved to a folder,
  # it can't be saved again.
  def create
    @safe = Safe.new(safe_params)

    if @safe.save
      render json: @safe, status: :created
    else
      render json: @safe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /saves/1
  def update
    if @safe.update(safe_params)
      render json: @safe
    else
      render json: @safe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /saves/1
  def destroy
    input_npc_id = params.require(:safe)['npc_id']
    input_folder_id = params.require(:safe)['folder_id']
    @safe = Safe.where('folder_id = ? AND npc_id = ?', input_folder_id, input_npc_id)

    @safe.destroy(@safe[0].id)
    # also send the associated folder data for use in client
    @folder_associated_with_deleted_save = Folder.find(input_folder_id)
    render json: @folder_associated_with_deleted_save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_safe
      @safe = Safe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def safe_params
      params.require(:safe).permit(:folder_id, :npc_id)
    end
end
