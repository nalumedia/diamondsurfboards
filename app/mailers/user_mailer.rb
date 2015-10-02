class UserMailer < ActionMailer::Base
default from: "DiamondSurfboards.com <contact@diamondsurfboards.com>"

 def welcome_email(contact)
 @contact = contact
 mail(to: "ryan.dranginis@gmail.com, diamondsurfboards@yahoo.com", subject: 'Contact From Diamond Surfboards')


  end

end