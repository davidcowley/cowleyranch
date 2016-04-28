class BailCodesController < ApplicationController
  before_action :set_bail_code, only: [:show, :edit, :update, :destroy]

  # GET /bail_codes
  # GET /bail_codes.json
  def index
    @bail_codes = BailCode.all
  end

  # GET /bail_codes/1
  # GET /bail_codes/1.json
  def show
  end

  # GET /bail_codes/new
  def new
    @bail_code = BailCode.new
  end

  # GET /bail_codes/1/edit
  def edit
  end

  # POST /bail_codes
  # POST /bail_codes.json
  def create
    @bail_code = BailCode.new(bail_code_params)

    respond_to do |format|
      if @bail_code.save
        format.html { redirect_to @bail_code, notice: 'Bail code was successfully created.' }
        format.json { render :show, status: :created, location: @bail_code }
      else
        format.html { render :new }
        format.json { render json: @bail_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bail_codes/1
  # PATCH/PUT /bail_codes/1.json
  def update
    respond_to do |format|
      if @bail_code.update(bail_code_params)
        format.html { redirect_to @bail_code, notice: 'Bail code was successfully updated.' }
        format.json { render :show, status: :ok, location: @bail_code }
      else
        format.html { render :edit }
        format.json { render json: @bail_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bail_codes/1
  # DELETE /bail_codes/1.json
  def destroy
    @bail_code.destroy
    respond_to do |format|
      format.html { redirect_to bail_codes_url, notice: 'Bail code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bail_code
      @bail_code = BailCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bail_code_params
      params.require(:bail_code).permit(:description, :abbreviation, :status, :weight)
      #params.permit(:description, :abbreviation, :status, :weight)
    end
end
