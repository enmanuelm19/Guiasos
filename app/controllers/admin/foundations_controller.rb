class Admin::FoundationsController < Admin::BaseController
  before_action :set_admin_foundation, only: [:show, :edit, :update, :destroy]

  # GET /admin/foundations
  # GET /admin/foundations.json
  def index
    @admin_foundations = Admin::Foundation.all
  end

  # GET /admin/foundations/1
  # GET /admin/foundations/1.json
  def show
  end

  # GET /admin/foundations/new
  def new
    @admin_foundation = Admin::Foundation.new
  end

  # GET /admin/foundations/1/edit
  def edit
  end

  # POST /admin/foundations
  # POST /admin/foundations.json
  def create
    @admin_foundation = Admin::Foundation.new(admin_foundation_params)

    respond_to do |format|
      if @admin_foundation.save
        format.html { redirect_to @admin_foundation, notice: 'Foundation was successfully created.' }
        format.json { render :show, status: :created, location: @admin_foundation }
      else
        format.html { render :new }
        format.json { render json: @admin_foundation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/foundations/1
  # PATCH/PUT /admin/foundations/1.json
  def update
    respond_to do |format|
      if @admin_foundation.update(admin_foundation_params)
        format.html { redirect_to @admin_foundation, notice: 'Foundation was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_foundation }
      else
        format.html { render :edit }
        format.json { render json: @admin_foundation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/foundations/1
  # DELETE /admin/foundations/1.json
  def destroy
    @admin_foundation.destroy
    respond_to do |format|
      format.html { redirect_to admin_foundations_url, notice: 'Foundation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_foundation
      @admin_foundation = Admin::Foundation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_foundation_params
      params.require(:admin_foundation).permit(:name, :description, :mission, :view, :phone, :mail)
    end
end
