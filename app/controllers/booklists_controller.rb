class BooklistsController < ApplicationController
  before_action :set_booklist, only: %i[ show edit update destroy ]

  # GET /booklists or /booklists.json
  def index
    @booklists = Booklist.all
    @booklists = @booklists.search(params[:term]) if params[:term].present?
  end

  # GET /booklists/1 or /booklists/1.json
  def show
  end

  # GET /booklists/new
  def new
    @booklist = Booklist.new
  end

  # GET /booklists/1/edit
  def edit
  end

  # POST /booklists or /booklists.json
  def create
    @booklist = Booklist.new(booklist_params)

    respond_to do |format|
      if @booklist.save
        format.html { redirect_to booklist_url(@booklist), notice: "Booklist was successfully created." }
        format.json { render :show, status: :created, location: @booklist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booklists/1 or /booklists/1.json
  def update
    respond_to do |format|
      if @booklist.update(booklist_params)
        format.html { redirect_to booklist_url(@booklist), notice: "Booklist was successfully updated." }
        format.json { render :show, status: :ok, location: @booklist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booklists/1 or /booklists/1.json
  def destroy
    @booklist.destroy

    respond_to do |format|
      format.html { redirect_to booklists_url, notice: "Booklist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booklist
      @booklist = Booklist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booklist_params
      params.require(:booklist).permit(:tilte, :author, :publisher, :year, :available, :type_id, :bookid) 
    end
end
