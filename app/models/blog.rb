class Blog < ActiveRecord::Base
   has_attached_file :image, :styles => { :medium => "680x600>", :thumb => "350x309>" }
  #  validates :image, presence: true
   validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
   include Bootsy::Container

end
