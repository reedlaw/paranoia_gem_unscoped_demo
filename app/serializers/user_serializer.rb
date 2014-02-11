class UserSerializer < ActiveModel::Serializer
  attributes :id
  has_one :company
  has_many :posts
end
