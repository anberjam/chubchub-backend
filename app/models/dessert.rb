class Dessert < ApplicationRecord
    has_many :favorites, dependent: :destroy
end
