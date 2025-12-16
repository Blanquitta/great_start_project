class FormController < ApplicationController
  def index
    @book = Book.new
    # render something, like:

    # render plain: "Form index page   input type="submit" Update Book button "
  end
end
