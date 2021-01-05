class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
end
