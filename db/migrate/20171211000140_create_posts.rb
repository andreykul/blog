class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :slug, null: false, index: true
      t.text :body
      t.attachment :picture

      t.timestamps
    end
  end
end
