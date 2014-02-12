class User < ActiveRecord::Base
  acts_as_paranoid
  has_many :posts, -> { with_deleted }
  belongs_to :company, -> { with_deleted }
  scope :deleted_company, -> { includes(:company).with_deleted }

  def posts
    Post.unscoped { super }
  end

  def company
    Company.unscoped { super }
  end
end
