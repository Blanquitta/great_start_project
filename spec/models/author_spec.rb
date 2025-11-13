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
end
  Rspec.describe (Model), type: :model do
    
end
2:29
Book cases to test:
Author name
Reviews
2:30
rating

RSpec.describe Author, type: :model do
  #create the models associated with the tests
  @author =  Author.create(
    name: "Dale Carnegie"
  )
  @user = User.create(
  )
  @book = Book.create(
    author: @author.id,
    reviews: nil,
    publisher: "Publisher Inc."
    title: "How to Enjoy your Life and Your Job"
    user_id:
    average_rating: 5.0
  )
  it 'returns the author name associated with the book' do
    expect(creator.full_name).to eq 'Dale Carnegie'
  end
end