class Favorite < ApplicationRecord
  belongs_to :user_id
  belongs_to :activity_id
end
