class Book < ActiveRecord::Base
  attr_accessible :author, :isbn, :price, :title

  belongs_to :category
end
