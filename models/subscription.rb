class Subscription < Sequel::Model(:tags_users)
	many_to_one :users
	many_to_one :tags
end
