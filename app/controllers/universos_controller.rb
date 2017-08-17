class UniversosController < ApplicationController
  before_action :set_universo, only: [:show, :edit, :update, :destroy]

  # GET /universos
  # GET /universos.json
  def index
    @universos = Universo.all
  end

  # GET /universos/1
  # GET /universos/1.json
  def show
  end

  # GET /universos/new
  def new
    @universo = Universo.new
  end

  # GET /universos/1/edit
  def edit
  end

  # POST /universos
  # POST /universos.json
  def create
    @universo = Universo.new(universo_params)

    respond_to do |format|
      if @universo.save
        format.html { redirect_to @universo, notice: 'Universo was successfully created.' }
        format.json { render :show, status: :created, location: @universo }
      else
        format.html { render :new }
        format.json { render json: @universo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /universos/1
  # PATCH/PUT /universos/1.json
  def update
    respond_to do |format|
      if @universo.update(universo_params)
        format.html { redirect_to @universo, notice: 'Universo was successfully updated.' }
        format.json { render :show, status: :ok, location: @universo }
      else
        format.html { render :edit }
        format.json { render json: @universo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /universos/1
  # DELETE /universos/1.json
  def destroy
    @universo.destroy
    respond_to do |format|
      format.html { redirect_to universos_url, notice: 'Universo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_universo
      @universo = Universo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def universo_params
      params.require(:universo).permit(:Costelacion, :Distancia)
    end
end
