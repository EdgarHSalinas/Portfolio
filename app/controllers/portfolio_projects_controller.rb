class PortfolioProjectsController < ApplicationController
  def index
    @portfolio_items = PortfolioProject.all 
  end
end
