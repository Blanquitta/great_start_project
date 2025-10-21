class Book < ApplicationRecord
    belongs_to :author
    has_many :reviews, dependent: :destroy 
    
    validates :title, presence: true

    validates :author, presence: true
end

 
