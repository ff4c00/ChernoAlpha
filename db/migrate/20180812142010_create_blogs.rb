class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title, comment: '存储博客标题'
      t.string :brief_info, comment: '存储博客内容简介'
      t.text :detail_info, comment: '存储博客主要内容'
      t.string :mini_pic_path, comment: '缩略图存储路径'
      t.string :master_pic_path, comment: '主图存储路径'
      t.timestamps
    end
    add_index :blogs, :title, using: :btree
  end
end
