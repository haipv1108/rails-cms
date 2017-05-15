module Admin
  class CategoriesController < AdminController
    before_action :set_category, only: [:show, :edit, :update, :destroy]

    def index
      @categories = Category.paginate(:page => params[:page], :per_page => 5)
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        flash[:success] = 'Create category successfully.'
        redirect_to admin_category_path(@category)
      else
        render 'new'
      end
    end
    
    def show
    end

    def edit
    end

    def update
      if @category.update(category_params)
        flash[:success] = 'Update category successfully.'
        redirect_to admin_category_path(@category)
      else
        render 'edit'
      end
    end

    def destroy
      @category.destroy
      flash[:danger] = 'Deleted category successfully.'
      redirect_to admin_categories_path
    end

    private
      def set_category
        @category = Category.find(params[:id])
      end

      def category_params
        params.require(:category).permit(:name)
      end
  end
end