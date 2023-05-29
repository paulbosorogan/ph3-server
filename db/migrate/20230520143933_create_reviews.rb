class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t| 
      t.string :comment 
      t.integer :book_id #foreign key
    end
  end
end
