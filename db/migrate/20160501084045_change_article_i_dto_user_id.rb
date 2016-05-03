class ChangeArticleIDtoUserId < ActiveRecord::Migration
  def change
  	remove_column :posts, :article_id
  	add_reference :posts, :user, index: true
  end
end
