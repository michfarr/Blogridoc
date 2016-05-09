class Post < ActiveRecord::Base
  validates_presence_of :title, :subtitle, :content
end
