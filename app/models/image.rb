class Image < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "640x480>", :thumb => "100x100>" }
  validates :image, :attachment_presence => true
  validates_with AttachmentPresenceValidator, :attributes => :image
end
