class GuideContent < ActiveRecord::Base
  belongs_to :revision
  has_one :identifier
  has_many :image_requirements
end
