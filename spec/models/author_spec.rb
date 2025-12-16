
require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'is valid with valid attributes' do
    author = Author.new(name: 'Dale Carnegie')
    expect(author).to be_valid
  end
end

  it 'is invalid without a name' do
    author = Author.new(name: nil)
    expect(author).not_to be_valid
  end
  Rspec.describe (Model), type: :model do
    
end
2:29
Book cases to test:
Author name
Reviews
2:30
rating
