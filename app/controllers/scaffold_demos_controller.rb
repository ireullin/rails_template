class ScaffoldDemosController < ApplicationController
  before_action :set_scaffold_demo, only: [:show, :edit, :update, :destroy]

  # GET /scaffold_demos
  # GET /scaffold_demos.json
  def index
    params[:page] ||=1
    @rows = ScaffoldDemo.page(params[:page]).per(20)
  end

  # GET /scaffold_demos/1
  # GET /scaffold_demos/1.json
  def show
  end

  # GET /scaffold_demos/new
  def new
    @row = ScaffoldDemo.new
  end

  # GET /scaffold_demos/1/edit
  def edit
  end

  # POST /scaffold_demos
  # POST /scaffold_demos.json
  def create
    @row = ScaffoldDemo.new(scaffold_demo_params)

    respond_to do |format|
      if @row.save
        format.html { redirect_to action: 'index', notice: 'Scaffold demo was successfully created.' }
        format.json { render :show, status: :created, location: @row }
      else
        format.html { render :new }
        format.json { render json: @row.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffold_demos/1
  # PATCH/PUT /scaffold_demos/1.json
  def update
    respond_to do |format|
      if @row.update(scaffold_demo_params)
        format.html { redirect_to :back, notice: 'Scaffold demo was successfully updated.' }
        format.json { render :show, status: :ok, location: @row }
      else
        format.html { render :edit }
        format.json { render json: @row.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffold_demos/1
  # DELETE /scaffold_demos/1.json
  def destroy
    @row.destroy
    respond_to do |format|
      format.html { redirect_to action: 'index', notice: 'Scaffold demo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaffold_demo
      @row = ScaffoldDemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scaffold_demo_params
      params.require(:scaffold_demo).permit(:name, :comment)
    end
end
