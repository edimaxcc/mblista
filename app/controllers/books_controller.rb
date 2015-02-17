class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    @author = Author.find(params[:author_id])
    @book = @author.books.create!(params[:book])
    redirect_to @author, :notice => "Book Created"
  end   

end
