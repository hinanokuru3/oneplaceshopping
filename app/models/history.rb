class History < ApplicationRecord
  belongs_to :user
  belongs_to :shopping_center
end
