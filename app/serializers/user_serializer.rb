class UserSerializer < ActiveModel::Serializer
  attributes :id
  has_many :posts

  def posts
    object.posts.with_deleted
  end
end
