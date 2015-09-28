class Contact < ActiveRecord::Base

after_create :email_diamond

private

def email_diamond
   PurchaseMailer.purchase_receipt(self).deliver
end

end
