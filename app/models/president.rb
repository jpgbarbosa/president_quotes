class President < ApplicationRecord
  has_many :quotes, dependent: :destroy

  validates_presence_of :name
end
