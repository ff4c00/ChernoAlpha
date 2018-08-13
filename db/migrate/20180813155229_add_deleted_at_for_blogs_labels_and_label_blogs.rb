class AddDeletedAtForBlogsLabelsAndLabelBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :deleted_at, :datetime
    add_index :blogs, :deleted_at

    add_column :labels, :deleted_at, :datetime
    add_index :labels, :deleted_at

    add_column :label_blogs, :deleted_at, :datetime
    add_index :label_blogs, :deleted_at
  end
end
