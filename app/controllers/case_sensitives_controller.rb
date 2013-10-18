class CaseSensitivesController < ApplicationController
  before_action :set_case_sensitive, only: [:show, :edit, :update, :destroy]

  # GET /case_sensitives
  # GET /case_sensitives.json
  def index
    @case_sensitives = CaseSensitive.all
  end

  # GET /case_sensitives/1
  # GET /case_sensitives/1.json
  def show
  end

  # GET /case_sensitives/new
  def new
    @case_sensitive = CaseSensitive.new
  end

  # GET /case_sensitives/1/edit
  def edit
  end

  # POST /case_sensitives
  # POST /case_sensitives.json
  def create
    @case_sensitive = CaseSensitive.new(case_sensitive_params)

    respond_to do |format|
      if @case_sensitive.save
        format.html { redirect_to @case_sensitive, notice: 'Case sensitive was successfully created.' }
        format.json { render action: 'show', status: :created, location: @case_sensitive }
      else
        format.html { render action: 'new' }
        format.json { render json: @case_sensitive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_sensitives/1
  # PATCH/PUT /case_sensitives/1.json
  def update
    respond_to do |format|
      if @case_sensitive.update(case_sensitive_params)
        format.html { redirect_to @case_sensitive, notice: 'Case sensitive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @case_sensitive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_sensitives/1
  # DELETE /case_sensitives/1.json
  def destroy
    @case_sensitive.destroy
    respond_to do |format|
      format.html { redirect_to case_sensitives_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_sensitive
      @case_sensitive = CaseSensitive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_sensitive_params
      params.require(:case_sensitive).permit(:name)
    end
end
