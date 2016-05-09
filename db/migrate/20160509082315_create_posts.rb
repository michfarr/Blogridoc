class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.text :image

      t.timestamps null: false
    end
  end
end
