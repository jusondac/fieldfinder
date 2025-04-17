class BookingEquipmentsController < ApplicationController
  before_action :set_booking_equipment, only: %i[ show edit update destroy ]

  # GET /booking_equipments or /booking_equipments.json
  def index
    @booking_equipments = BookingEquipment.all
  end

  # GET /booking_equipments/1 or /booking_equipments/1.json
  def show
  end

  # GET /booking_equipments/new
  def new
    @booking_equipment = BookingEquipment.new
  end

  # GET /booking_equipments/1/edit
  def edit
  end

  # POST /booking_equipments or /booking_equipments.json
  def create
    @booking_equipment = BookingEquipment.new(booking_equipment_params)

    respond_to do |format|
      if @booking_equipment.save
        format.html { redirect_to @booking_equipment, notice: "Booking equipment was successfully created." }
        format.json { render :show, status: :created, location: @booking_equipment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booking_equipments/1 or /booking_equipments/1.json
  def update
    respond_to do |format|
      if @booking_equipment.update(booking_equipment_params)
        format.html { redirect_to @booking_equipment, notice: "Booking equipment was successfully updated." }
        format.json { render :show, status: :ok, location: @booking_equipment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booking_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_equipments/1 or /booking_equipments/1.json
  def destroy
    @booking_equipment.destroy!

    respond_to do |format|
      format.html { redirect_to booking_equipments_path, status: :see_other, notice: "Booking equipment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_equipment
      @booking_equipment = BookingEquipment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def booking_equipment_params
      params.expect(booking_equipment: [ :booking_id, :equipment_id, :quantity, :price_per_unit, :total_price ])
    end
end
