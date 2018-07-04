class PortfolioProjectsController < ApplicationController

  def index
    @portfolio_items = PortfolioProject.all 
  end

  def new
    @portfolio_item = PortfolioProject.new 
  end


  # POST /portfolio_projects
  
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

  # Needs to be Refactored
  # Edit 
  # GET /portfolio_projects/1/edit
  def edit
    @portfolio_item = PortfolioProject.find(params[:id])
  end

  # PATCH/PUT /portfolio_projects/1
  def update
    @portfolio_item = PortfolioProject.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio_project).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolio_projects_path, notice: 'Portfolio was successfully updated.'}
      else
        format.html { render :edit }
      end
    end
  end

  def show 
    @portfolio_item = PortfolioProject.find(params[:id])
  end

  # DELETE /portfolio_item/1
 
  def destroy
    # Perform the lookup
    @portfolio_item = PortfolioProject.find(params[:id])

    # Destroy/Delete Record
    @portfolio_item.destroy

    #Redirect to
    respond_to do |format|
      format.html { redirect_to portfolio_projects_url, notice: 'Portfolio was successfully deleted.'}
    end
  end
end