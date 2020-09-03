require 'test_helper'

class NotificacionMailerTest < ActionMailer::TestCase
  test "actualizacion" do
    mail = NotificacionMailer.actualizacion
    assert_equal "Actualizacion", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "nuevo" do
    mail = NotificacionMailer.nuevo
    assert_equal "Nuevo", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "borrado" do
    mail = NotificacionMailer.borrado
    assert_equal "Borrado", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
