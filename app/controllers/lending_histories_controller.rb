class LendingHistoriesController < ApplicationController
  before_action :set_lending_history, only: [:show, :edit, :update, :destroy]

  # GET /lending_histories
  # GET /lending_histories.json
  def index
    @lending_histories = LendingHistory.all
  end

  # GET /lending_histories/1
  # GET /lending_histories/1.json
  def show
  end

  # GET /lending_histories/new
  def new
    @lending_history = LendingHistory.new
  end

  # GET /lending_histories/1/edit
  def edit
  end

  # POST /lending_histories
  # POST /lending_histories.json
  def create
    @lending_history = LendingHistory.new(lending_history_params)

    respond_to do |format|
      if @lending_history.save
        format.html { redirect_to @lending_history, notice: 'Lending history was successfully created.' }
        format.json { render :show, status: :created, location: @lending_history }
      else
        format.html { render :new }
        format.json { render json: @lending_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lending_histories/1
  # PATCH/PUT /lending_histories/1.json
  def update
    respond_to do |format|
      if @lending_history.update(lending_history_params)
        format.html { redirect_to @lending_history, notice: 'Lending history was successfully updated.' }
        format.json { render :show, status: :ok, location: @lending_history }
      else
        format.html { render :edit }
        format.json { render json: @lending_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lending_histories/1
  # DELETE /lending_histories/1.json
  def destroy
    @lending_history.destroy
    respond_to do |format|
      format.html { redirect_to lending_histories_url, notice: 'Lending history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lending_history
      @lending_history = LendingHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lending_history_params
      params.require(:lending_history).permit(:date, :license_id)
    end
end
