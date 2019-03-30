class ArchivesController < ApplicationController
  before_action :set_archive, only: [:show, :edit, :update, :destroy]
  before_action :set_category

  # GET /archives
  # GET /archives.json
  def index
    @archives = Archive.all
  end

  # GET /archives/1
  # GET /archives/1.json
  def show
  end

  # GET /archives/new
  def new
    @archive = Archive.new
    #@archive = @category.archives.build
  end

  # GET /archives/1/edit
  def edit
  end

  # POST /archives
  # POST /archives.json
  def create
    @archive = Archive.new(archive_params)
    @archive.category = @category
    
    respond_to do |format|
      if @archive.save
        format.html { redirect_to @archive.category, notice: 'Archive was successfully created.' }
        format.json { render :show, status: :created, location: @archive }
      else
        format.html { render :new }
        format.json { render json: @archive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archives/1
  # PATCH/PUT /archives/1.json
  def update
    respond_to do |format|
      if @archive.update(archive_params)
        format.html { redirect_to @archive.category, notice: 'Archive was successfully updated.' }
        format.json { render :show, status: :ok, location: @archive }
      else
        format.html { render :edit }
        format.json { render json: @archive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archives/1
  # DELETE /archives/1.json
  def destroy
    @archive.destroy
    respond_to do |format|
      format.html { redirect_to @archive.category, notice: 'Archive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_category
      @category = Category.find(params[:category_id])
    end 

    # Use callbacks to share common setup or constraints between actions.
    def set_archive
      @archive = Archive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archive_params
      params.require(:archive).permit(:name, :typ, :creationdate, :location, :tamaño, :string, :categories)
    end
end
