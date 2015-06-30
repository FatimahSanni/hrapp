class FileUpload < ActiveRecord::Base
	include Paperclip
	has_attached_file :upload
	validates_attachment_presence :upload
	validates_attachment :upload, content_type: { content_type: ["application/pdf", "application/epub+zip", "application/octet-stream", "application/vnd.openxmlformats-officedocument.wordprocessingml.document", "image/jpeg", "image/jpg", "image/png", "application/vnd.openxmlformats-officedocument.presentationml.presentation", "application/vnd.ms-powerpoint", "application/msword"] } 
end
