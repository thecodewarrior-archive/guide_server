class Draft < ActiveRecord::Base
  has_many :revisions
end
