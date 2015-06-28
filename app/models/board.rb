class Board < ActiveRecord::Base
	  		has_attached_file :image, :styles => { :medium => "400x502>", :thumb => "250x314>" }
        validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
end
