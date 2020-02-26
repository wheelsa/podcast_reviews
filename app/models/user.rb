class User < ApplicationRecord
  has_many :genres, dependent: :destroy 
end
