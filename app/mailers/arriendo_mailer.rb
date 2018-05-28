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
      @rent = "Ha arrendado " + equipo.name + "para la fecha: " + arr.fecha.to_formatted_s(:long) + " por " + arr.dias.to_s + "dias," + " y su codigo de retiro es: " + arr.nropedido
      mail(:to => user.email, :subject => "Confirmacion de su arriendo en Rental Ski")
    else
      @greeting = "Hola" + arr.nombre
      @rent = "Ha arrendado " + equipo.name + "para la fecha: " + arr.fecha.to_formatted_s(:long) + " por " + arr.dias.to_s + "dias," + " y su codigo de retiro es: " + arr.nropedido
      mail(:to => arr.email, :subject => "Confirmacion de su arriendo en Rental Ski")
    end
  end

  def order_alert(user, equipo, arr)
    if user != arr
      @mensaje = "Un cliente ha reservado un arriendo, los detalles son: "
      @m = "Email: " + user.email
      @n = "Nombre: " + user.nombre + " " + user.apellidopaterno + " " + user.apellidomaterno
      @ec = "Equipo: " + equipo.name
      @f = "Fecha: " + arr.fecha.to_formatted_s(:long)
      @fr = "Fecha de retorno: " + (arr.fecha + arr.dias).to_formatted_s(:long)
      @r = "Codigo de retiro: " + arr.nropedido
      mail(:to => "admin@mail.com", :subject => "Nuevo arriendo")
    else
      @mensaje = "Un cliente ha reservado un arriendo, los detalles son: "
      @m = "Email: " + arr.email
      @n = "Nombre: " + arr.nombre + " " + arr.apellidop + " " + arr.apellidom
      @ec = "Equipo: " + equipo.name
      @f = "Fecha: " + arr.fecha.to_formatted_s(:long)
      @fr = "Fecha de retorno: " + (arr.fecha + arr.dias).to_formatted_s(:long)
      @r = "Codigo de retiro: " + arr.nropedido
      mail(:to => "admin@mail.com", :subject => "Nuevo arriendo")
    end
  end

  def order_reminder(user, equipo, arr)
    if user != arr
      @greeting = "Hola " + user.nombre
      @rent = "Recuerde que ha arrendado " + equipo.name + "para la fecha: " + arr.fecha.to_formatted_s(:long) + " por " + arr.dias.to_s + "dias," + " y su codigo de retiro es: " + arr.nropedido
      mail(:to => user.email, :subject => "Recuerdo de su arriendo en Rental Ski")
    else
      @greeting = "Hola" + arr.nombre
      @rent = "Recuerde que ha arrendado " + equipo.name + "para la fecha: " + arr.fecha.to_formatted_s(:long) + " por " + arr.dias.to_s + "dias," + " y su codigo de retiro es: " + arr.nropedido
      mail(:to => arr.email, :subject => "Recuerdo de su arriendo en Rental Ski")
    end
  end

end
