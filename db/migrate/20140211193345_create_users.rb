class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.datetime :deleted_at
      t.timestamps
    end
  end
end