class FacilityAvailabilitiesController < ApplicationController
  before_action :set_facility_availability, only: %i[ show edit update destroy ]

  # GET /facility_availabilities or /facility_availabilities.json
  def index
    @facility_availabilities = FacilityAvailability.all
  end

  # GET /facility_availabilities/1 or /facility_availabilities/1.json
  def show
  end

  # GET /facility_availabilities/new
  def new
    @facility_availability = FacilityAvailability.new
  end

  # GET /facility_availabilities/1/edit
  def edit
  end

  # POST /facility_availabilities or /facility_availabilities.json
  def create
    @facility_availability = FacilityAvailability.new(facility_availability_params)

    respond_to do |format|
      if @facility_availability.save
        format.html { redirect_to @facility_availability, notice: "Facility availability was successfully created." }
        format.json { render :show, status: :created, location: @facility_availability }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @facility_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facility_availabilities/1 or /facility_availabilities/1.json
  def update
    respond_to do |format|
      if @facility_availability.update(facility_availability_params)
        format.html { redirect_to @facility_availability, notice: "Facility availability was successfully updated." }
        format.json { render :show, status: :ok, location: @facility_availability }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @facility_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facility_availabilities/1 or /facility_availabilities/1.json
  def destroy
    @facility_availability.destroy!

    respond_to do |format|
      format.html { redirect_to facility_availabilities_path, status: :see_other, notice: "Facility availability was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facility_availability
      @facility_availability = FacilityAvailability.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def facility_availability_params
      params.expect(facility_availability: [ :facility_id, :day_of_week, :open_time, :close_time, :is_active ])
    end
end
