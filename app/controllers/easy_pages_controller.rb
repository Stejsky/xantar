class EasyPagesController < ApplicationController

  def index
    SEMANTICS.products_field("cat_id", 13658)
    SEMANTICS.products_field("name", search_parameters[:search])
    @products_index = SEMANTICS.get_products()
  end

  private

  def search_parameters
    params.permit(:search).permit(:search)
  end

end
