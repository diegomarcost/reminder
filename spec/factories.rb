FactoryGirl.define do

	factory :task do
		title "Task"
		description "Contenido mas largo"
		date { 3.days.from_now }
		days_before 3
	end
	
end