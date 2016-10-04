class NfiSchedulesController < ApplicationController
  before_action :set_nfi_schedule, only: [:show, :edit, :update, :destroy]

  # GET /nfi_schedules
  # GET /nfi_schedules.json
  def index
    @nfi_schedules = NfiSchedule.all
  end

  # GET /nfi_schedules/1
  # GET /nfi_schedules/1.json
  def show
  end

  # GET /nfi_schedules/new
  def new
    @nfi_schedule = NfiSchedule.new
  end

  # GET /nfi_schedules/1/edit
  def edit
  end

  # POST /nfi_schedules
  # POST /nfi_schedules.json
  def create
    @nfi_schedule = NfiSchedule.new(nfi_schedule_params)

    respond_to do |format|
      if @nfi_schedule.save
        format.html { redirect_to @nfi_schedule, notice: 'Nfi schedule was successfully created.' }
        format.json { render :show, status: :created, location: @nfi_schedule }
      else
        format.html { render :new }
        format.json { render json: @nfi_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nfi_schedules/1
  # PATCH/PUT /nfi_schedules/1.json
  def update
    respond_to do |format|
      if @nfi_schedule.update(nfi_schedule_params)
        format.html { redirect_to @nfi_schedule, notice: 'Nfi schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @nfi_schedule }
      else
        format.html { render :edit }
        format.json { render json: @nfi_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nfi_schedules/1
  # DELETE /nfi_schedules/1.json
  def destroy
    @nfi_schedule.destroy
    respond_to do |format|
      format.html { redirect_to nfi_schedules_url, notice: 'Nfi schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nfi_schedule
      @nfi_schedule = NfiSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nfi_schedule_params
      params.require(:nfi_schedule).permit(:schedule_name, :description, :data_source_id, :status)
    end
end
