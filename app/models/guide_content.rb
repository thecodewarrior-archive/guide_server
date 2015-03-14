class GuideContent < ActiveRecord::Base
  belongs_to :revision
  has_one :identifier
end
