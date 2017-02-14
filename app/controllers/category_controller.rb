class CategoryController < ActionController::Base
  layout 'standard'

  def new
    @category = Category.new
    @attribute_options = Category.get_attribute_options
    @campaign_id = params[:campaign_id]
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
