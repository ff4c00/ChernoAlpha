class LabelBlog < ActiveRecord::Base
  has_many :label_blogs
  has_many :blogs, through: :label_blogs
  acts_as_paranoid without_default_scope: true

end
