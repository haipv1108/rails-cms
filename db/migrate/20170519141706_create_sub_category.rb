class CreateSubCategory < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.references :category, index: true, foreign_key: true
    end
  end
end
