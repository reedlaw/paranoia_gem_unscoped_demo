class Post < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :user
end
