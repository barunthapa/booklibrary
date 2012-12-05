class Book < ActiveRecord::Base
  attr_accessible :author, :isbn, :price, :title
end
