class Board < ActiveRecord::Base
	  		has_attached_file :logo, :styles => { :medium => "150x150>", :thumb => "75x75>" }
	  		has_attached_file :waveheightlogo, :styles => { :medium => "200x128>", :thumb => "100x64>" }
	  		has_attached_file :rockerlogo, :styles => { :medium => "400x94>", :thumb => "128x30>" }
	  	  has_attached_file :skilllogo, :styles => { :medium => "400x94>", :thumb => "128x30>" }
	  		has_attached_file :image, :styles => { :medium => "400x502>", :thumb => "250x314>" }
        validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
        has_many :dimensions
        
end
