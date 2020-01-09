require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    ActiveRecord::Base.connection.reset_pk_sequence!('roles')
    roles = Role::ROLES
    roles.each do |role|
      Role.find_or_create_by!(name: role)
    end
  end

  test "validar_user_name_vacio" do
    user = User.new
    user.email = "marco@gmail.com"
    user.phone = "(212)3134444"
    user.password = "12345678"
    user.password_confirmation = "12345678"
    user.role_id = "3"
    assert_not user.save, "Debe colocar el nombre de usuario"
    assert_equal user.errors[:user_name][0], "Debe colocar el nombre de usuario"
  end 

  test "validar_nombre_usuario_unico" do
    user1 = User.new(user_name: "marcolauro", email: "marco4soul@gmail.com",
      password: "123456",password_confirmation: "123456", role_id: 2, confirmed_at: Time.now)
    
    user1.save
    user2 = User.new(user_name: "marcolauro", email: "marco@gmail.com",
      password: "123456",password_confirmation: "123456", role_id: 2, confirmed_at: Time.now)
    assert_not user2.save, "Guardo un nombre de usuario repetido"
    assert_equal user2.errors[:user_name], ["El nombre de usuario ya existe"]
  end


  test "validar_email_vacio" do
    user = User.new
    user.user_name = "marcolauro"
    user.phone = "8876"
    user.password = "12345678"
    user.password_confirmation = "12345678"
    user.role_id = "3"
    assert_not user.save, "Debe colocar el correo"
    assert_equal user.errors[:email][0], "Debe colocar el correo"
  end

  test "validar_formato_email" do
    user = User.new
    user.user_name = "marcolauro"
    user.email = "marcolauro"
    user.phone = "8876"
    user.password = "12345678"
    user.password_confirmation = "12345678"
    user.role_id = "3"
    assert_not user.save, "Debe colocar formato valido"
    assert_equal user.errors[:email][0], "Debe colocar un formato de correo válido"
  end

  test "validar_correo_unico" do
    user1 = User.new(user_name: "marcolauro", email: "marco4soul@gmail.com",password: "123456",
           password_confirmation: "123456", role_id: 2, confirmed_at: Time.now)
    user1.save
    user2 = User.new(user_name: "marcolaur", email: "marco4soul@gmail.com",password: "123456",
      password_confirmation: "123456", role_id: 2, confirmed_at: Time.now)
    assert_not user2.save, "Guardo correo existente"
    assert_equal user2.errors[:email][0], "El correo ya existe"
  end

  test "validar_formato_telefono" do
    user = User.new(user_name: "marcolauro", email: "marco4soul@gmail.com",
      password: "123456",password_confirmation: "123456", phone: "13222", role_id: 2)
    assert_not user.save, "Debe colocar formato de teléfono válido"
  end

  

  test "validar_longitud_nombre_usuario" do
    user = User.new(user_name: "marco", email: "marco4soul@gmail.com",
      password: "123456",password_confirmation: "123456", phone: "(414)1333333", 
      role_id: 2)
    assert_not user.save
    assert_equal user.errors[:user_name], ["El nombre de usuario debe tener al menos 6 carácteres"]

  end


  test "registro_exitoso" do
    user = User.new(user_name: "marcoAli", email: "marco4soul@gmail.com",
      password: "123456",password_confirmation: "123456", phone: "(414) 133-3333", 
      role_id: 2, confirmed_at: Time.now)
    assert user.save 
  end

  test "validar_formato_nombre_usuario" do
    user = User.new(user_name: "1111111", email: "marco4soul@gmail.com",
      password: "123456",password_confirmation: "123456", phone: "(414)1333333", 
      role_id: 2)
    assert_not user.save, "Guardo nombre usuario sin formato valido"
    assert_equal user.errors[:user_name], ["Debe contener al menos una letra"]
  end

  test "validar_password_vacia" do
    user = User.new(user_name: "marcolauro", email: "marco4soul@gmail.com",
      password: "", password_confirmation: "", phone: "(414)1333333", 
      role_id: 2)
      assert_not user.save
  end
  test "validar_longitud_password" do
    user = User.new(user_name: "marcolauro", email: "marco4soul@gmail.com",
      password: "1234", password_confirmation: "1234", phone: "(414)1333333", 
      role_id: 2)
      assert_not user.save
  end
  test "validar_presencia_password_confirmation" do
    user = User.new(user_name: "marcolauro", email: "marco4soul@gmail.com",
      password: "123456", password_confirmation: "", phone: "(414)1333333", 
      role_id: 2)
      assert_not user.save
  end
  test "validar_coincidencia_password_confirmation" do
    user = User.new(user_name: "marcolauro", email: "marco4soul@gmail.com",
      password: "123456", password_confirmation: "1234567", phone: "(414)1333333", 
      role_id: 2)
      assert_not user.save
  end 
end