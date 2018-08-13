class Blog < ActiveRecord::Base
  has_many :label_blogs
  has_many :labels, through: :label_blogs
  acts_as_paranoid without_default_scope: true

  class << self
    def test
      t = Thread.new do
        loop{p "新线程"}
      end
      t.join
      p "主线程"
    end

  end
end
