class CuttingCodesController < ApplicationController
  before_action :set_cutting_code, only: [:show, :edit, :update, :destroy]

  # GET /cutting_codes
  # GET /cutting_codes.json
  def index
    @cutting_codes = CuttingCode.all
  end

  # GET /cutting_codes/1
  # GET /cutting_codes/1.json
  def show
  end

  # GET /cutting_codes/new
  def new
    @cutting_code = CuttingCode.new
  end

  # GET /cutting_codes/1/edit
  def edit
  end

  # POST /cutting_codes
  # POST /cutting_codes.json
  def create
    @cutting_code = CuttingCode.new(cutting_code_params)

    respond_to do |format|
      if @cutting_code.save
        format.html { redirect_to @cutting_code, notice: 'Cutting code was successfully created.' }
        format.json { render :show, status: :created, location: @cutting_code }
      else
        format.html { render :new }
        format.json { render json: @cutting_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cutting_codes/1
  # PATCH/PUT /cutting_codes/1.json
  def update
    respond_to do |format|
      if @cutting_code.update(cutting_code_params)
        format.html { redirect_to @cutting_code, notice: 'Cutting code was successfully updated.' }
        format.json { render :show, status: :ok, location: @cutting_code }
      else
        format.html { render :edit }
        format.json { render json: @cutting_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cutting_codes/1
  # DELETE /cutting_codes/1.json
  def destroy
    @cutting_code.destroy
    respond_to do |format|
      format.html { redirect_to cutting_codes_url, notice: 'Cutting code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cutting_code
      @cutting_code = CuttingCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cutting_code_params
      params.require(:cutting_code).permit(:description, :abbreviation, :status)
    end
end
