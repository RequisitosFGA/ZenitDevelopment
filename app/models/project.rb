class Project < ApplicationRecord
  belongs_to :service
  belongs_to :customer
  belongs_to :user
end
