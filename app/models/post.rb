class Post < ActiveRecord::Base
  validates_presence_of :titulo, :texto

  has_many :comentarios
end
