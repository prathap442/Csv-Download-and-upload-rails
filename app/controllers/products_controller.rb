class ProductsController < ApplicationController
  def index
    @products = Product.order(:name)
    respond_to do |format|
        format.html
        format.xls 
        format.csv do
          headers['Content-Disposition'] = "attachment; filename=\"user-list.csv\""
          headers['Content-Type'] ||= 'text/csv'
        end
    end  
  end

  def import
    @product_csv_file = params[:file] 
    Product.import(@product_csv_file)
    redirect_to root_url,notice: "Products are imported successfully"
  end
end
