class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
  end

  def create
    @category = Category.new permitted_params
    if @category.save
      flash! :success, :locals => {:title => @category.title}
      redirect_to categories_path
    else
      flash!(:error)
      render :new
    end
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.find params[:id]
    if @category.update permitted_params
      flash!(:success)
      redirect_to categories_path
    else
      flash!(:error)
      render :edit
    end
  end

  def show
    
  end

  def destroy
    @category = Category.find params[:id]
    if @category.destroy
      flash! :warning, :locals => {:title => @category.title}
      redirect_to categories_path
    else
      flash!(:error)
      redirect_to categories_path
    end
  end 

  private
    def permitted_params
      params.require(:category).permit(:title, :image)
    end
end
