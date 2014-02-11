class User < ActiveRecord::Base
  acts_as_paranoid
  has_many :posts

  def posts
    Post.with_deleted { super }
  end
end
