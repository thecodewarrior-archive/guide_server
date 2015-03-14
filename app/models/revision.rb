class Revision < ActiveRecord::Base
  belongs_to :guide
  belongs_to :draft
  belongs_to :submission
  has_one :guide_content
end
