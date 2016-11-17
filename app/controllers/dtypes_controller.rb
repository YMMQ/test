class DtypesController < ApplicationController
  before_action :set_dtype, only: [:show, :edit, :update, :destroy]

  # GET /dtypes
  # GET /dtypes.json
  def index
    @dtypes = Dtype.all
  end

  # GET /dtypes/1
  # GET /dtypes/1.json
  def show
  end

  # GET /dtypes/new
  def new
    @dtype = Dtype.new
  end

  # GET /dtypes/1/edit
  def edit
  end

  # POST /dtypes
  # POST /dtypes.json
  def create
    @dtype = Dtype.new(dtype_params)

    respond_to do |format|
      if @dtype.save
        format.html { redirect_to @dtype, notice: 'Dtype was successfully created.' }
        format.json { render :show, status: :created, location: @dtype }
      else
        format.html { render :new }
        format.json { render json: @dtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dtypes/1
  # PATCH/PUT /dtypes/1.json
  def update
    respond_to do |format|
      if @dtype.update(dtype_params)
        format.html { redirect_to @dtype, notice: 'Dtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @dtype }
      else
        format.html { render :edit }
        format.json { render json: @dtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dtypes/1
  # DELETE /dtypes/1.json
  def destroy
    @dtype.destroy
    respond_to do |format|
      format.html { redirect_to dtypes_url, notice: 'Dtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dtype
      @dtype = Dtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dtype_params
      params.require(:dtype).permit(:name, :remarks)
    end
end
