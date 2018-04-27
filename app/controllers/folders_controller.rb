class FoldersController < ProtectedController
  before_action :set_folder, only: %i[update destroy]

  # GET /folders
  def index
    # @folders = Folder.all
    # changed so an index returns a user's folders/npcs
    @folders = current_user.folders

    render json: @folders
  end

  # GET /folders/1
  def show
    render json: Folder.find(params[:id])
  end

  # POST /folders
  def create
    @folder = current_user.folders.build(folder_params)

    if @folder.save
      render json: @folder, status: :created
    else
      render json: @folder.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /folders/1
  def update
    if @folder.update(folder_params)
      render json: @folder
    else
      render json: @folder.errors, status: :unprocessable_entity
    end
  end

  # DELETE /folders/1
  def destroy
    @folder.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_folder
      @folder = current_user.folders.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def folder_params
      params.require(:folder).permit(:title, :user_id)
    end
end
