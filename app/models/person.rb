class Person < ActiveRecord::Base
	has_attached_file :resume
	validates_attachment_presence :resume
	validates_attachment :resume, content_type: { content_type: ["application/pdf", "application/vnd.openxmlformats-officedocument.wordprocessingml.document", "image/jpeg", "image/jpg", "image/png", "application/msword"] } 
end
