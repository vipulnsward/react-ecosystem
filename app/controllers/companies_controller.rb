class CompaniesController < ApplicationController
  def index
    render
  end

  def new
    @company = Company.new
    render
  end

  def create
    @company = Company.new company_params
    if @company.save
      redirect_to new_company_path, notice: "Added new company #{@company.title}!"
    else
      redirect_to new_company_path, alert: "Error adding company! Please provide all required fields"
    end
  end

  def update
    redirect_to :new
  end

  private

  def company_params
    params.require(:company).permit(:title, :description, :site_link, :company_image)
  end

end
