class AnnoncesController < ApplicationController
  before_action :set_annonce, only: [:show, :edit, :update, :destroy]

  # GET /annonces
  # GET /annonces.json
  def index
    @annonces = Annonce.all
  end


  # GET /annonces/1
  # GET /annonces/1.json
  def show
    @annonces = Annonce.find(params[:id])
  end

  # GET /annonces/new
  def new
    @annonce = Annonce.new
  end

  # GET /annonces/1/edit
  def edit
  end

  def contact
    @annonce = Annonce.find(params[:id])
  end

  # POST /annonces
  # POST /annonces.json
  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.user_id = current_user.id
    # @user = User.find(session[:user_id])
    #annonce = @user.annonces.build(params[:annonce])
    #annonce.save

    respond_to do |format|
      if @annonce.save
        format.html { redirect_to @annonce, notice: "L'Annonce a bien été crée" }
        format.json { render :show, status: :created, location: @annonce }
      else
        format.html { render :new }
        format.json { render json: @annonce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annonces/1
  # PATCH/PUT /annonces/1.json
  def update
    respond_to do |format|
      if @annonce.update(annonce_params)
        format.html { redirect_to @annonce, notice: "L'Annonce a bien été mise à jour" }
        format.json { render :show, status: :ok, location: @annonce }
      else
        format.html { render :edit }
        format.json { render json: @annonce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annonces/1
  # DELETE /annonces/1.json
  def destroy
    @annonce.destroy
    respond_to do |format|
      format.html { redirect_to annonces_url, notice: "L'Annonce a bien été détruite" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annonce
      @annonce = Annonce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def annonce_params
      params.require(:annonce).permit(:titre, :description, :prix, :image, :image2, :image3)
    end
end
