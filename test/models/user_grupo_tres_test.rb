# frozen_string_literal: true

require 'test_helper'

class UserGrupoTresTest < ActiveSupport::TestCase
  def setup
    @user = users(:tres_one)
    @another_user = users(:tres_two)
  end

  test 'Prueba correcta registro de comensal google' do
    data = { 'email' => 'example@gmail.com', 'first_name' => 'Example' }
    user = User.new(user_name: data['email'],
                    email: data['email'],
                    password: Devise.friendly_token[0, 20],
                    is_google: true,
                    role: roles(:tres_comensal))
    assert user.save(validate: false)
  end

  test 'Prueba correcta registro de restaurant google' do
    data = { 'email' => 'restaurant@gmail.com', 'first_name' => 'restaurant' }
    user = User.new(user_name: data['email'],
                    email: data['email'],
                    password: Devise.friendly_token[0, 20],
                    is_google: true,
                    role: roles(:tres_restaurant))
    assert user.save(validate: false)
  end

  test 'Prueba usuario normal con user_name correo y sin confirmacion de password' do
    user = User.new(user_name: 'yonssder@email.com',
                    email: 'hola@email.com',
                    password: '123456')
    assert_not user.save
  end

  test 'Prueba correcta actualizacion de datos de acceso' do
    @user.email = 'correo@cambio.com'
    @user.password = 'passwordcambiado'
    assert @user.save
  end

  test 'INVALIDO no deberia actualizar un usuario con correo vacio' do
    @user.email = ''
    @user.valid?
    assert_not @user.errors[:email].empty?, 'INVALIDO guardando sin correo'
  end

  test 'INVALIDO no deberia actualizar un usuario con correo vacio, MENSAJE ERROR' do
    mensaje_error = ['Debe colocar el correo', 'Debe colocar un formato de correo válido']
    @user.email = ''
    @user.valid?
    assert_equal mensaje_error, @user.errors[:email]
  end

  test 'INVALIDO no deberia actualizar un usuario con correo ya registrado' do
    @user.email = @another_user.email
    @user.valid?
    assert_not @user.errors[:email].empty?, 'INVALIDO guardando correo repetido'
  end

  test 'INVALIDO no deberia actualizar un usuario con correo ya registrado, MENSAJE ERROR' do
    mensaje_error = ['El correo ya existe']
    @user.email = @another_user.email
    @user.valid?
    assert_equal mensaje_error, @user.errors[:email]
  end

  test 'INVALIDO no deberia actualizar un usuario con un correo no valido' do
    @user.email = '@#$#23232())'
    @user.valid?
    assert_not @user.errors[:email].empty?, 'INVALIDO guardando correo invalido'
  end

  test 'INVALIDO no deberia actualizar un usuario con un correo no valido, MENSAJE ERROR' do
    mensaje_error = ['Debe colocar un formato de correo válido']
    @user.email = '@#$#23232())'
    @user.valid?
    assert_equal mensaje_error, @user.errors[:email]
  end

  test 'INVALIDO no deberia actualizar un password vacio' do
    @user.password = ''
    @user.valid?
    assert_not @user.errors[:password].empty?, 'INVALIDO guardando un password vacio'
  end

  test 'INVALIDO no deberia actualizar un password vacio, MENSAJE ERROR' do
    mensaje_error = ['Debe colocar la contraseña']
    @user.password = ''
    @user.valid?
    assert_equal mensaje_error, @user.errors[:password]
  end

  test 'INVALIDO no deberia actualizar un password de longitud menor a 6 caracteres' do
    @user.password = '123'
    @user.valid?
    assert_not @user.errors[:password].empty?, 'INVALIDO guardando usuario con password corto'
  end

  test 'INVALIDO no deberia actualizar un password de longitud menor a 6 caracteres, MENSAJE ERROR' do
    mensaje_error = ['La contraseña debe tener al menos 6 carácteres']
    @user.password = '123'
    @user.valid?
    assert_equal mensaje_error, @user.errors[:password]
  end

  test 'INVALIDO no deberia actualizar un telefono que no cumpla con el formato' do
    @user.phone = 'asdfasd1'
    @user.valid?
    assert_not @user.errors[:phone].empty?, 'INVALIDO guardando usuario con numero invalido'
  end

  test 'INVALIDO no deberia actualizar un telefono que no cumpla con el formato, MENSAJE ERROR' do
    mensaje_error = ['Formato de telefono invalido']
    @user.phone = 'asdfasd1'
    @user.valid?
    assert_equal mensaje_error, @user.errors[:phone]
  end
end
