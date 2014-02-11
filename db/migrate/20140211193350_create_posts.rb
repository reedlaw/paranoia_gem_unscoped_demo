class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
