class Friday13thsController < ApplicationController
  before_action :set_friday_13th, only: [:show, :edit, :update, :destroy]

  # GET /friday_13ths
  # GET /friday_13ths.json
  def index
    @friday_13ths = Friday13th.all
  end

  # GET /friday_13ths/1
  # GET /friday_13ths/1.json
  def show
  end

  # GET /friday_13ths/new
  def new
    @friday_13th = Friday13th.new
  end

  # GET /friday_13ths/1/edit
  def edit
  end

  # POST /friday_13ths
  # POST /friday_13ths.json
  def create
    @friday_13th = Friday13th.new(friday_13th_params)

    respond_to do |format|
      if @friday_13th.save
        format.html { redirect_to @friday_13th, notice: 'Friday 13th was successfully created.' }
        format.json { render :show, status: :created, location: @friday_13th }
      else
        format.html { render :new }
        format.json { render json: @friday_13th.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friday_13ths/1
  # PATCH/PUT /friday_13ths/1.json
  def update
    respond_to do |format|
      if @friday_13th.update(friday_13th_params)
        format.html { redirect_to @friday_13th, notice: 'Friday 13th was successfully updated.' }
        format.json { render :show, status: :ok, location: @friday_13th }
      else
        format.html { render :edit }
        format.json { render json: @friday_13th.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friday_13ths/1
  # DELETE /friday_13ths/1.json
  def destroy
    @friday_13th.destroy
    respond_to do |format|
      format.html { redirect_to friday_13ths_url, notice: 'Friday 13th was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friday_13th
      @friday_13th = Friday13th.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friday_13th_params
      params.require(:friday_13th).permit(:name, :superstition)
    end
end
