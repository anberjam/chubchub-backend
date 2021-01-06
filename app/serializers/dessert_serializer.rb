class DessertSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :likes, :picture
  
end
