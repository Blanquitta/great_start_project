class Book < ApplicationRecord
# class Book < ActiveRecord

    belongs_to :author
    has_many :reviews, dependent: :destroy 
    
    validates :title, presence: true, uniqueness: true
    validates :published_date, presence: true
    validates :author, presence: true
 end
