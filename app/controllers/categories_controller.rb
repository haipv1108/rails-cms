class CategoriesController < ContentController

  def show
    @category = Category.find(params[:id])
  end

end