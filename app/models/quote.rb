class Quote < ApplicationRecord
  belongs_to :president

  validates_presence_of :text
end
