module Admin
  class SubCategoriesController < AdminController

    def create
      @category = Category.find(params[:category_id])
      @sub_category = @category.sub_categories.create(sub_category_params)
      flash[:success] = 'Create sub category successfully.'
      redirect_to admin_category_path(@category)
    end

    def show
      @category = Category.find(params[:category_id])
      @sub_category = @category.sub_categories.find(params[:id])
      flash.now[:success] = 'Ridect to article of sub category'
      #TODO: Ridect to article of sub category
      redirect_to admin_category_path(@category)
    end

    def edit
      #TODO: Edit sub category using ajax
    end

    def update

    end

    def destroy
      @category = Category.find(params[:category_id])
      @sub_category = @category.sub_categories.find(params[:id])
      @sub_category.destroy
      flash[:danger] = 'Deleted subcategory successfully.'
      redirect_to admin_category_path(@category)
    end

    private
      def sub_category_params
        params.require(:sub_category).permit(:name)
      end
  end
end