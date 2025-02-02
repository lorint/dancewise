# frozen_string_literal: true

class EventStatusesController < ApplicationController
  before_action :set_event_status, only: %i[ show edit update destroy ]

  # GET /event_statuses or /event_statuses.json
  def index
    @event_statuses = EventStatus.all
  end

  # GET /event_statuses/1 or /event_statuses/1.json
  def show
  end

  # GET /event_statuses/new
  def new
    @event_status = EventStatus.new
  end

  # GET /event_statuses/1/edit
  def edit
  end

  # POST /event_statuses or /event_statuses.json
  def create
    @event_status = EventStatus.new(event_status_params)

    respond_to do |format|
      if @event_status.save
        format.html { redirect_to event_status_url(@event_status), notice: "Event status was successfully created." }
        format.json { render :show, status: :created, location: @event_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_statuses/1 or /event_statuses/1.json
  def update
    respond_to do |format|
      if @event_status.update(event_status_params)
        format.html { redirect_to event_status_url(@event_status), notice: "Event status was successfully updated." }
        format.json { render :show, status: :ok, location: @event_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @event_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_statuses/1 or /event_statuses/1.json
  def destroy
    @event_status.destroy

    respond_to do |format|
      format.html { redirect_to event_statuses_url, notice: "Event status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_status
      @event_status = EventStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_status_params
      params.require(:event_status).permit(:status, :event_id)
    end
end
