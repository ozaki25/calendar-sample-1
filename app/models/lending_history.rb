class LendingHistory < ActiveRecord::Base
  belongs_to :license
  belongs_to :request
end
