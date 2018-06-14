class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :email
      t.string :book_title
      t.integer :days_needed
      t.string :intrested_response

      t.timestamps null: false
    end
  end
end
