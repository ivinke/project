class User < ActiveRecord::Base
has_many :trips, dependent: :destroy

validates(:username, { :uniqueness => true, :presence => true })
end
