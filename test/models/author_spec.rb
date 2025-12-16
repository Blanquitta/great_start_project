
require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'is valid with valid attributes' do
    author = Author.new(name: 'Dale Carnegie')
    expect(author).to be_valid
  end

  it 'is invalid without a name' do
    author = Author.new(name: nil)
    expect(author).not_to be_valid
  end
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
  # the models associated with the tests
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