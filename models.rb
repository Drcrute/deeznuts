class User < ActiveRecord::Base
	has_many :classses
	has_one :profile
	has_many :notes
end

class Profile < ActiveRecord::Base
	belongs_to :user
end

class Classs < ActiveRecord::Base
	has_many :users
	has_many :notes
end

class Notes < ActiveRecord::Base
	belongs_to :classs
	belongs_to :user
end