class Request < ActiveRecord::Base
  extend Enumerize
  has_many :lending_histories, dependent: :destroy
  enumerize :status, in: [:approved, :waiting], scope: true, default: :waiting
  validates :date, presence: true
  validates :name, presence: true
  validates :department, presence: true
  validates :controller, presence: true
  validates :division, presence: true
  validates :block, presence: true
end
