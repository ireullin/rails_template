class ScaffoldDemosController < ApplicationController
  before_action :set_row, only: [:show, :edit, :update, :destroy]

  def index
    params[:page] ||=1
    @rows = ScaffoldDemo.page(params[:page]).per(20)
  end


  def show
  end


  def new
    @row = ScaffoldDemo.new
  end


  def edit
  end


  def create
    @row = ScaffoldDemo.new(get_params)

    respond_to do |format|
      if @row.save
        format.html { redirect_to :back, notice: 'Scaffold demo was successfully created.' }
        format.json { render :show, status: :created, location: @row }
      else
        format.html { render :new }
        format.json { render json: @row.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @row.update(get_params)
        format.html { redirect_to :back, notice: 'Scaffold demo was successfully updated.' }
        format.json { render :show, status: :ok, location: @row }
      else
        format.html { render :edit }
        format.json { render json: @row.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @row.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Scaffold demo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_row
      @row = ScaffoldDemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def get_params
      params.require(:scaffold_demo).permit(:name, :comment, :sex, :adult, :job, :notified_at)
    end
end
