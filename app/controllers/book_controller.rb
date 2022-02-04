class BookController < ApplicationController
    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_param)
        @current_time = Time.new
        @book.created_at = @current_time.inspect
        @book.updated_at = @current_time.inspect
        if @book.save
            redirect_to :action => 'viewBooks'
        end
    end

    def viewBooks
        @books = Book.all
    end

    private
        def book_param
            params.require(:book).permit(:author, :title, :genre, :cdn)
        end
end
