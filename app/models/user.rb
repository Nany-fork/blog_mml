class User < ApplicationRecord
    has_many :articles
    validates_associated :articles
    
    validates :name , presence: true
    validates_format_of  :email, :with => /[^\s]@[^\s]/
end
