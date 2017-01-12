class PaintingsController < ApplicationController

  def new
    @book = Book.find(params[:book_id])
    @painting = Painting.new
  end

end
