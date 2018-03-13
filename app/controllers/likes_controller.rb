class LikesController < ProtectedController
  # before_action :set_like, only: [:show, :update, :destroy]
  before_action :set_like, only: %i[update destroy]
  # Testing^

  # GET /likes
  def index
    @likes = Like.all

    render json: @likes
  end

  # GET /likes/1
  def show
    # testing everything except last line of method
    if params[:id] == 'search-by-user'
      # @user = User.find(params[:user_id])
      @likes = current_user.liked_npcs

      render json: @likes
    elsif params[:id] == 'search-by-npc'
      # @npc = Npc.find(params['npc_id'])
      input_npc_id = params.require(:like)['npc_id']
      @npc = Npc.find(input_npc_id)
      @likes = @npc.liking_users

      render json: @likes
    else
      @like = Like.find(params[:id])

      render json: @likes
    end
  end

  # POST /likes
  def create
    @like = Like.new(like_params)

    if @like.save
      render json: @like, status: :created
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /likes/1
  def update
    if @like.update(like_params)
      render json: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # DELETE /likes/1
  def destroy
    @like.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like
      @like = Like.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def like_params
      params.require(:like).permit(:user_id, :npc_id)
    end
end
