require 'rails_helper'

RSpec.describe Book, type: :model do
    it 'returns the full name of the author' do
    author = Author.create(name: 'Dale Carnegie')
    book = Book.create(title: 'The Shining', author: author)
    expect(book.author.name).to eq 'Dale Carnegie'
  end
   it 'calculates the average rating from reviews' do
    book = Book.create(title: 'The Shining')
    Review.create(book: book, rating: 5)
    Review.create(book: book, rating: 3)
    Review.create(book: book, rating: 4)
    expect(book.average_rating).to eq 4.0
  end