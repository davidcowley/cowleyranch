class FieldAcresController < ApplicationController
  before_action :set_field, :set_field_acre, only: [:show, :edit, :update, :destroy]
  # GET /field_acres
  # GET /field_acres.json
  def index
    @field_acres = FieldAcre.all
  end

  # GET /field_acres/1
  # GET /field_acres/1.json
  def show
  end

  # GET /field_acres/new
  def new
    @field_acre = FieldAcre.new
    #@field = Field.find(params[:field_id])
    #@field_acre = @field.field_acres.new
  end

  # GET /field_acres/1/edit
  def edit
  end

  # POST /field_acres
  # POST /field_acres.json
  def create
    @field_acre = FieldAcre.new(field_acre_params)
    #@field = Field.find(params[:field_id])
    #@field_acre = @field.field_acres.new(todo_item_params)

    respond_to do |format|
      if @field_acre.save
        format.html { redirect_to @field_acre, notice: 'Field acre was successfully created.' }
        format.json { render :show, status: :created, location: @field_acre }
      else
        format.html { render :new }
        format.json { render json: @field_acre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /field_acres/1
  # PATCH/PUT /field_acres/1.json
  def update
    respond_to do |format|
      if @field_acre.update(field_acre_params)
        format.html { redirect_to @field_acre, notice: 'Field acre was successfully updated.' }
        format.json { render :show, status: :ok, location: @field_acre }
      else
        format.html { render :edit }
        format.json { render json: @field_acre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_acres/1
  # DELETE /field_acres/1.json
  def destroy
    @field_acre.destroy
    #@field_arces = @field.field_acres.find(params[:id])
    #@field_arces.destroy
    respond_to do |format|
      format.html { redirect_to field_acres_url, notice: 'Field acre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field
      #@field = Field.find(params[:field_id])
    end

    def set_field_acre
      #@field_acre = @field.field_acres.find(params[:id])
      @field_acre = FieldAcre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def field_acre_params
      params.require(:field_acre).permit(:description, :abbreviation, :status, :number_of_acres, :field_type_id)
    end
end
