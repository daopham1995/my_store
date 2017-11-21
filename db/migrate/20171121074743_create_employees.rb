class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name, limit: 50, null: false
      t.string :email, limit: 255, null: false
      t.string :password_digest

      t.timestamps
    end

    add_index :employees, :email, unique: true
  end
end
