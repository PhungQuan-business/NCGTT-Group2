class ProductcategoriesController < ApplicationController
  before_action :set_productcategory, only: %i[ show edit update destroy ]

  # GET /productcategories or /productcategories.json
  def index
    @productcategories = Productcategory.all
  end

  # GET /productcategories/1 or /productcategories/1.json
  def show
  end

  # GET /productcategories/new
  def new
    @productcategory = Productcategory.new
  end

  # GET /productcategories/1/edit
  def edit
  end

  # POST /productcategories or /productcategories.json
  def create
    @productcategory = Productcategory.new(productcategory_params)

    respond_to do |format|
      if @productcategory.save
        format.html { redirect_to productcategory_url(@productcategory), notice: "Productcategory was successfully created." }
        format.json { render :show, status: :created, location: @productcategory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @productcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productcategories/1 or /productcategories/1.json
  def update
    respond_to do |format|
      if @productcategory.update(productcategory_params)
        format.html { redirect_to productcategory_url(@productcategory), notice: "Productcategory was successfully updated." }
        format.json { render :show, status: :ok, location: @productcategory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @productcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productcategories/1 or /productcategories/1.json
  def destroy
    @productcategory.destroy

    respond_to do |format|
      format.html { redirect_to productcategories_url, notice: "Productcategory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productcategory
      @productcategory = Productcategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def productcategory_params
      params.require(:productcategory).permit(:name, :description)
    end
end
