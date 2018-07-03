class PortfolioProjectsController < ApplicationController
  def index
    @portfolio_items = PortfolioProject.all 
  end

  def new
    @portfolio_item = PortfolioProject.new 
  end


  # POST /portfolio_project
  
  def create
    @portfolio_item = PortfolioProject.new(params.require(:portfolio_project).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolio_projects_path , notice: 'Your Portfolio Project was successfully added.' }
      else
        format.html { render :new }
      end
    end
  end
end