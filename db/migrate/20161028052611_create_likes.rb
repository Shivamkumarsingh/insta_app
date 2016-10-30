class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean :upvote
      t.boolean :downvote
      t.references :post, index: true, foreign_key: true
      t.references :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
