class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, limit: 50, null: false
      t.string :description

      t.timestamps
    end

    add_index :categories, :name, unique: true
  end
end
