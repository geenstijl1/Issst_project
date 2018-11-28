class Datum < ApplicationRecord
  has_attached_file :documento
  validates_attachment :documento, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
