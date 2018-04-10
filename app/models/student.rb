class Student < ActiveRecord::Base
	belongs_to :admin_user

	validates :admin_user_id, :name, :date_od_birth, :father_name, :contact_number, :presence => true
end
