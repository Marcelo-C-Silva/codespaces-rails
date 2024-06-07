class UsuarioPersonagemsController < ApplicationController
  before_action :set_usuario_personagem, only: %i[ show edit update destroy ]

  # GET /usuario_personagems or /usuario_personagems.json
  def index
    @usuario_personagems = UsuarioPersonagem.all
  end

  # GET /usuario_personagems/1 or /usuario_personagems/1.json
  def show
  end

  # GET /usuario_personagems/new
  def new
    @usuario_personagem = UsuarioPersonagem.new
  end

  # GET /usuario_personagems/1/edit
  def edit
  end

  # POST /usuario_personagems or /usuario_personagems.json
  def create
    @usuario_personagem = UsuarioPersonagem.new(usuario_personagem_params)

    respond_to do |format|
      if @usuario_personagem.save
        format.html { redirect_to usuario_personagem_url(@usuario_personagem), notice: "Usuario personagem was successfully created." }
        format.json { render :show, status: :created, location: @usuario_personagem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @usuario_personagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_personagems/1 or /usuario_personagems/1.json
  def update
    respond_to do |format|
      if @usuario_personagem.update(usuario_personagem_params)
        format.html { redirect_to usuario_personagem_url(@usuario_personagem), notice: "Usuario personagem was successfully updated." }
        format.json { render :show, status: :ok, location: @usuario_personagem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usuario_personagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_personagems/1 or /usuario_personagems/1.json
  def destroy
    @usuario_personagem.destroy!

    respond_to do |format|
      format.html { redirect_to usuario_personagems_url, notice: "Usuario personagem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_personagem
      @usuario_personagem = UsuarioPersonagem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usuario_personagem_params
      params.require(:usuario_personagem).permit(:user_id, :personagem_id)
    end
end
