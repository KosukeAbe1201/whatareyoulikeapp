class Keyword < ApplicationRecord
  validates :keyword, {presence: true,uniqueness: true}
  belongs_to :user
end
