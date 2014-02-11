class User < ActiveRecord::Base
  acts_as_paranoid
  has_many :posts
  belongs_to :company

  def posts
    Post.with_deleted { super }
  end

  def company
    Company.unscoped { super }
  end
end
