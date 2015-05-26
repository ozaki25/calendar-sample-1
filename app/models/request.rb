class Request < ActiveRecord::Base
  has_many :lending_histories, dependent: :destroy
end
