class Admin::CompanyBranchesController < Admin::ApplicationController
  before_action :set_company_branch, only: [:show, :edit, :update, :destroy]

  # GET /company_branches
  # GET /company_branches.json
  def index
    @company_branches = CompanyBranch.all
  end

  # GET /company_branches/1
  # GET /company_branches/1.json
  def show
  end

  # GET /company_branches/new
  def new
    @company_branch = CompanyBranch.new
  end

  # GET /company_branches/1/edit
  def edit
  end

  # POST /company_branches
  # POST /company_branches.json
  def create
    @company_branch = CompanyBranch.new(company_branch_params)

    respond_to do |format|
      if @company_branch.save
        format.html { redirect_to admin_company_branches_path, notice: 'Company branch was successfully created.' }
        format.json { render :show, status: :created, location: @company_branch }
      else
        format.html { render :new }
        format.json { render json: @company_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_branches/1
  # PATCH/PUT /company_branches/1.json
  def update
    respond_to do |format|
      if @company_branch.update(company_branch_params)
        format.html { redirect_to admin_company_branches_path, notice: 'Company branch was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_branch }
      else
        format.html { render :edit }
        format.json { render json: @company_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_branches/1
  # DELETE /company_branches/1.json
  def destroy
    @company_branch.destroy
    respond_to do |format|
      format.html { redirect_to admin_company_branches_url, notice: 'Company branch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_branch
      @company_branch = CompanyBranch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_branch_params
      params.require(:company_branch).permit(:name, :address)
    end
end
