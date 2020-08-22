require 'test_helper'

class UsuarioMailerTest < ActionMailer::TestCase
  test "actualizacion" do
    mail = UsuarioMailer.actualizacion
    assert_equal "Actualizacion", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "nuevo" do
    mail = UsuarioMailer.nuevo
    assert_equal "Nuevo", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "borrado" do
    mail = UsuarioMailer.borrado
    assert_equal "Borrado", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
