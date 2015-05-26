class Request < ActiveRecord::Base
  extend Enumerize
  has_many :lending_histories, dependent: :destroy
  enumerize :status, in: [:approved, :waiting], scope: true, default: :waiting
end
