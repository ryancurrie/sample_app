FactoryGirl.define do
	factory :user do
		name     "Ryan Currie"
		email    "ryan@example.com"
		password "foobar"
		password_confirmation "foobar"
	end
end