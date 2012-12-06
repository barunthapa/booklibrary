class Book < ActiveRecord::Base
  attr_accessible :author, :isbn, :price, :title
  validates :author, :presence => true
  validates :isbn, :presence => true, :numericality => { :only_integer => true}
  validates :price, :presence => true, :numericality => true
  validates :title, :presence => true

  belongs_to :category
end
