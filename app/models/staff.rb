class Staff < ActiveRecord::Base
	# validates :name, :address, :mobile, :emergency_name, :gender, :marital_status, :emergency_phone, presence: true
	Gender = %w(Male Female)
	Status = %w(Single Married)
	Employment = %w(Active Leave\ of\ Absence Resigned Terminated)
	has_many :dependents
	accepts_nested_attributes_for :dependents, allow_destroy: true, reject_if: :all_blank
	has_many :jobs
	accepts_nested_attributes_for :jobs, allow_destroy: true, reject_if: :all_blank
	has_many :disciplinary_cases, dependent: :destroy
	has_attached_file :avatar, styles: {medium: "200*200>", thumb: '100*100>'}
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	paginates_per 10
	has_many :leaves, dependent: :destroy
	belongs_to :user
end
