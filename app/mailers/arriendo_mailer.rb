class ArriendoMailer < ApplicationMailer
  default :from => "noreply@rentalski.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.arriendo_mailer.order_confirm.subject
  #
  def order_confirm(user, equipo, arr)
    if user != arr
      @greeting = "Hola " + user.nombre
      @rent = "Ha arrendado equipo para la fecha: " + arr.fecha.to_formatted_s(:long) + " por " + arr.dias.to_s + " dias, y su código de retiro es: " + arr.nropedido
      mail(:to => user.email, :subject => "Confirmación de su arriendo en Rental Ski")
      @checkin = "Para editar los detalles de su arriendo, y poder llegar directamente a buscar su equipo, puede hacer el check in en nuestra página"
    else
      @greeting = "Hola " + arr.nombre
      @rent = "Ha arrendado equipo para la fecha: " + arr.fecha.to_formatted_s(:long) + " por " + arr.dias.to_s + "dias, y su código de retiro es: " + arr.nropedido
      @checkin = "Para editar los detalles de su arriendo, y poder llegar directamente a buscar su equipo, debe registrarse y hacer el check in en nuestra página"
      mail(:to => arr.email, :subject => "Confirmación de su arriendo en Rental Ski")
    end
  end

  def order_alert(user, equipo, arr)
    if user != arr
      @mensaje = "Un cliente ha reservado un arriendo, los detalles son: "
      @m = "Email: " + user.email
      @n = "Nombre: " + user.nombre + " " + user.apellidopaterno + " " + user.apellidomaterno
      @f = "Fecha: " + arr.fecha.to_formatted_s(:long)
      @fr = "Fecha de retorno: " + (arr.fecha + arr.dias).to_formatted_s(:long)
      @r = "Código de retiro: " + arr.nropedido
      mail(:to => "rentalskichile@gmail.com", :subject => "Nuevo arriendo")
    else
      @mensaje = "Un cliente ha reservado un arriendo, los detalles son: "
      @m = "Email: " + arr.email
      @n = "Nombre: " + arr.nombre + " " + arr.apellidop + " " + arr.apellidom
      @f = "Fecha: " + arr.fecha.to_formatted_s(:long)
      @fr = "Fecha de retorno: " + (arr.fecha + arr.dias).to_formatted_s(:long)
      @r = "Código de retiro: " + arr.nropedido
      mail(:to => "rentalskichile@gmail.com", :subject => "Nuevo arriendo")
    end
  end

  def order_reminder(user, equipo, arr)
    if user != arr
      @greeting = "Hola " + user.nombre
      @rent = "Recuerde que ha arrendado equipo para la fecha: " + arr.fecha.to_formatted_s(:long) + " por " + arr.dias.to_s + "días," + " y su código de retiro es: " + arr.nropedido
      mail(:to => user.email, :subject => "Recuerdo de su arriendo en Rental Ski")
    else
      @greeting = "Hola" + arr.nombre
      @rent = "Recuerde que ha arrendado equipo para la fecha: " + arr.fecha.to_formatted_s(:long) + " por " + arr.dias.to_s + "días," + " y su código de retiro es: " + arr.nropedido
      mail(:to => arr.email, :subject => "Recuerdo de su arriendo en Rental Ski")
    end
  end

end
