class RemoveCommentfromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :comment, :text
    add_column :comments, :user_comment, :text
  end
end
