class PostsTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :posts_topics do |t|
      t.references :post, index: true
      t.references :topic, index: true
      t.index [:post_id, :topic_id]
    end
  end
end
