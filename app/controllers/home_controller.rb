# -*- encoding : utf-8 -*-
class HomeController < ApplicationController

  def index
    @home_index = {}
    @home_index[:cards] = [
      {title: 'John Doe', brief: 'Some example text some example text. John Doe is an architect and engineer',btn_link: '#', img: {src: 'http://static.runoob.com/images/mix/img_avatar.png',alt: 'Card image'}},
      {title: 'John Doe', brief: 'Some example text some example text. John Doe is an architect and engineer',btn_link: '#', img: {src: 'http://static.runoob.com/images/mix/img_avatar.png',alt: 'Card image'}},
      {title: 'John Doe', brief: 'Some example text some example text. John Doe is an architect and engineer',btn_link: '#', img: {src: 'http://static.runoob.com/images/mix/img_avatar.png',alt: 'Card image'}}
    ]

    @home_index[:carousels] = [
      {title: '第一张图片描述标题',brief: '描述文字!', img: {src: 'http://static.runoob.com/images/mix/img_fjords_wide.jpg'}},
      {title: '第二张图片描述标题',brief: '描述文字!', img: {src: 'http://static.runoob.com/images/mix/img_nature_wide.jpg'}},
      {title: '第三张图片描述标题',brief: '描述文字!', img: {src: 'http://static.runoob.com/images/mix/img_mountains_wide.jpg'}}
    ]
  end 
  
end 