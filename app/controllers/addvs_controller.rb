class AddvsController < ApplicationController
  before_action :set_addv, only: [:show, :edit, :update, :destroy]

  # GET /addvs
  # GET /addvs.json
  def index
    @addvs = Addv.all
    if params[:search]
      @addvs = Addv.search(params[:search]).order("created_at DESC")
    else
      @addvs = Addv.all.order('created_at DESC')
    end


  end

  # GET /addvs/1
  # GET /addvs/1.json
  def show
    

  end

  # GET /addvs/new
  def new
    @addv = Addv.new
  end

  # GET /addvs/1/edit
  def edit
  end

  # POST /addvs
  # POST /addvs.json
  def create
    @addv = Addv.new(addv_params)

    respond_to do |format|
      if @addv.save
        format.html { redirect_to @addv, notice: 'Addv was successfully created.' }
        format.json { render :show, status: :created, location: @addv }
      else
        format.html { render :new }
        format.json { render json: @addv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addvs/1
  # PATCH/PUT /addvs/1.json
  def update
    respond_to do |format|
      if @addv.update(addv_params)
        format.html { redirect_to @addv, notice: 'Addv was successfully updated.' }
        format.json { render :show, status: :ok, location: @addv }
      else
        format.html { render :edit }
        format.json { render json: @addv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addvs/1
  # DELETE /addvs/1.json
  def destroy
    @addv.destroy
    respond_to do |format|
      format.html { redirect_to addvs_url, notice: 'Addv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addv
      @addv = Addv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addv_params
      params.require(:addv).permit(:title, :image, :organization_id)
    end
end
