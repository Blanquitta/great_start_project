class BooksController < ApplicationController

before_action :set_book, only: %i[ show edit update destroy ]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: "Book was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: "Book was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: "Book was successfully destroyed."
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :published_date)
    end
end

class BooksController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end
end

def create
  user = User.find_by(books: params[:books])

  if user
    # Success
  else
    flash.now[:alert] = 'Invalid username or password.'
    render :new
  end
end

def create
  user = User.find_by(books: params[:books])

  if user
    # Success
  else
    flash.now[:alert] = 'Invalid username or password.'
    render :new
  end
end

def create
  user = User.find_by(books: params[:books])

  if user
    if user.authenticate(params[:password])
      # Success

    else
      flash.now[:alert] = 'Invalid book or password.'
      render :new
    end
  else
    flash.now[:alert] = 'Invalid book or password.'
    render :new
  end
end

#role 
def require_admin
    if set_books[:role] != 'admin'
      flash[:alert] = 'You do not have access to that page'
      redirect_to root_path
    end
  end