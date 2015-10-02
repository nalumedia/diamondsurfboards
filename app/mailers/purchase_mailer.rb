class PurchaseMailer < ActionMailer::Base
layout 'purchase_mailer'
default from: "DiamondSurfboards.com <contact@diamondsurfboards.com>"

 def purchase_receipt (contact)
 mail(to: "ryan.dranginis@gmail.com", subject: 'Contact From Diamond Surfboards + Date.today.to_s')
 @contact = contact

  end

end


