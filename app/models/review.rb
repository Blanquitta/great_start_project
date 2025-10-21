class Review < ApplicationRecord
    belongs_to :book 
    validates :content, presence: true
    validates :rating, presence: true, inclusion: { in: 1..5 }

    after_create :update_book_rating

    def update_book_rating(book)
     average = book.reviews.average(:rating)
     book.update(average_rating: average)
    end 
end