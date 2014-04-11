class Tag < ActiveRecord::Base
  belongs_to :note
  validates :tag, :presence => true
end
