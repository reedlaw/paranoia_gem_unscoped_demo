class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
