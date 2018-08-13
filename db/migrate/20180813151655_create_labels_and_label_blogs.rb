class CreateLabelsAndLabelBlogs < ActiveRecord::Migration[5.0]
  def change
    
    create_table :labels do |t|
      t.string :name, comment: '标签名称'
      t.string :explain, comment: '对标签进行说明'
    end

    create_table :label_blogs do |t|
      t.integer :label_id
      t.integer :blog_id
    end

    add_index :label_blogs, [:label_id, :blog_id], unique: true, using: :btree

  end
end
