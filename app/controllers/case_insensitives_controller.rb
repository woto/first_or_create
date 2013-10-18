class CaseInsensitivesController < ApplicationController
  before_action :set_case_insensitive, only: [:show, :edit, :update, :destroy]

  # GET /case_insensitives
  # GET /case_insensitives.json
  def index
    @case_insensitives = CaseInsensitive.all
  end

  # GET /case_insensitives/1
  # GET /case_insensitives/1.json
  def show
  end

  # GET /case_insensitives/new
  def new
    @case_insensitive = CaseInsensitive.new
  end

  # GET /case_insensitives/1/edit
  def edit
  end

  # POST /case_insensitives
  # POST /case_insensitives.json
  def create
    @case_insensitive = CaseInsensitive.new(case_insensitive_params)

    respond_to do |format|
      if @case_insensitive.save
        format.html { redirect_to @case_insensitive, notice: 'Case insensitive was successfully created.' }
        format.json { render action: 'show', status: :created, location: @case_insensitive }
      else
        format.html { render action: 'new' }
        format.json { render json: @case_insensitive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_insensitives/1
  # PATCH/PUT /case_insensitives/1.json
  def update
    respond_to do |format|
      if @case_insensitive.update(case_insensitive_params)
        format.html { redirect_to @case_insensitive, notice: 'Case insensitive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @case_insensitive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_insensitives/1
  # DELETE /case_insensitives/1.json
  def destroy
    @case_insensitive.destroy
    respond_to do |format|
      format.html { redirect_to case_insensitives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_insensitive
      @case_insensitive = CaseInsensitive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_insensitive_params
      params.require(:case_insensitive).permit(:name)
    end
end
