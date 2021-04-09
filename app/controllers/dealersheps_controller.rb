# frozen_string_literal: true

# Handles dealershep related actions.
class DealershepsController < ApplicationController
  before_action :set_dealershep, only: %i[show edit update destroy]
  skip_before_action :require_login, only: %i[show index]

  # GET /dealersheps or /dealersheps.json
  def index
    @dealersheps = Dealershep.all
  end

  # GET /dealersheps/1 or /dealersheps/1.json
  def show
  end

  # GET /dealersheps/new
  def new
    @dealershep = Dealershep.new
  end

  # GET /dealersheps/1/edit
  def edit
  end

  # POST /dealersheps or /dealersheps.json
  def create
    @dealershep = Dealershep.new(dealershep_params)

    respond_to do |format|
      if @dealershep.save
        format.html { redirect_to @dealershep, notice: "Dealershep was successfully created." }
        format.json { render :show, status: :created, location: @dealershep }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dealershep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealersheps/1 or /dealersheps/1.json
  def update
    respond_to do |format|
      if @dealershep.update(dealershep_params)
        format.html { redirect_to @dealershep, notice: "Dealershep was successfully updated." }
        format.json { render :show, status: :ok, location: @dealershep }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dealershep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealersheps/1 or /dealersheps/1.json
  def destroy
    @dealershep.destroy
    respond_to do |format|
      format.html { redirect_to dealersheps_url, notice: "Dealershep was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dealershep
    @dealershep = Dealershep.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dealershep_params
    params.require(:dealershep).permit(:name)
  end
end
