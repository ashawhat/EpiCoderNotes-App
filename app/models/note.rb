class Note < ActiveRecord::Base
  has_many :tags
  belongs_to :author
  validates :title, :presence => true
  validates :content, :presence => true
end
