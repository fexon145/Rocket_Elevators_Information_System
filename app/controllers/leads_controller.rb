class LeadsController < ApplicationController
  before_action :set_lead, only: %i[ show edit update destroy ]

  # GET /leads or /leads.json
  def index
    redirect_to "/index"
    # @leads = Lead.all
  end

  # GET /leads/1 or /leads/1.json
  def show
  end

  # GET /leads/new
  def new
    redirect_to "/index"
    @lead = Lead.new
  end

  # GET /leads/1/edit
  def edit
    redirect_to "/index"
  end

  # POST /leads or /leads.json
  def create
    @lead = Lead.new(lead_params)
    @lead.DateOfRequest = Time.now

    respond_to do |format|
      if @lead.save
        format.html { redirect_to "/index", notice: "Lead was successfully created." }
        format.json { render :show, status: :created, location: @lead }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leads/1 or /leads/1.json
  def update
    redirect_to "/index"
    respond_to do |format|
      if @lead.update(lead_params)
        format.html { redirect_to @lead, notice: "Lead was successfully updated." }
        format.json { render :show, status: :ok, location: @lead }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads/1 or /leads/1.json
  def destroy
    redirect_to "/index"
    # @lead.destroy
    # respond_to do |format|
    #   format.html { redirect_to leads_url, notice: "Lead was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lead_params
      params.require(:lead).permit(:FullName, :CompanyName, :Email, :Phone, :ProjectName, :ProjectDescription, :Departement, :Message, :AttachedFile, :DateOfRequest)
    end
end
