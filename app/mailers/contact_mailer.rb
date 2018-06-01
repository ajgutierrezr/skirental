class ContactMailer < ApplicationMailer
    default :from => "user@rentalski.com"

    def contactar(cont)
      @m = "Desde el email " + cont.email
      @p = cont.message
      mail(:to => "rentalskichile@gmail.com", :subject => "Contacto establecido por usuario")
    end
end
