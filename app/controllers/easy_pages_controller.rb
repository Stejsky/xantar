class EasyPagesController < ApplicationController

  def index
    SEMANTICS.products_field("cat_id", 13658)
    SEMANTICS.products_field("name", search_parameters[:search])
    @products_index = SEMANTICS.get_products()
  end

  def laptops
    SEMANTICS.products_field("cat_id", 12855)
    SEMANTICS.products_field("name", search_parameters[:search])
    @products_index = SEMANTICS.get_products()
  end

  def monitors
    SEMANTICS.products_field("cat_id", 12460)
    SEMANTICS.products_field("name", search_parameters[:search])
    @products_index = SEMANTICS.get_products()
  end

  private

  def search_parameters
    params.permit(:search).permit(:search)
  end

end
