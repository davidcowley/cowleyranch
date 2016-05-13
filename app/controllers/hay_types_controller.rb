class HayTypesController < ApplicationController
  before_action :set_hay_type, only: [:show, :edit, :update, :destroy]

  # GET /hay_types
  # GET /hay_types.json
  def index
    @hay_types = HayType.all
  end

  # GET /hay_types/1
  # GET /hay_types/1.json
  def show
  end

  # GET /hay_types/new
  def new
    @hay_type = HayType.new
  end

  # GET /hay_types/1/edit
  def edit
  end

  # POST /hay_types
  # POST /hay_types.json
  def create
    @hay_type = HayType.new(hay_type_params)

    respond_to do |format|
      if @hay_type.save
        format.html { redirect_to @hay_type, notice: 'Hay type was successfully created.' }
        format.json { render :show, status: :created, location: @hay_type }
      else
        format.html { render :new }
        format.json { render json: @hay_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hay_types/1
  # PATCH/PUT /hay_types/1.json
  def update
    respond_to do |format|
      if @hay_type.update(hay_type_params)
        format.html { redirect_to @hay_type, notice: 'Hay type was successfully updated.' }
        format.json { render :show, status: :ok, location: @hay_type }
      else
        format.html { render :edit }
        format.json { render json: @hay_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hay_types/1
  # DELETE /hay_types/1.json
  def destroy
    @hay_type.destroy
    respond_to do |format|
      format.html { redirect_to hay_types_url, notice: 'Hay type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hay_type
      @hay_type = HayType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hay_type_params
      params.require(:hay_type).permit(:description, :abbreviation, :status)
    end
end
