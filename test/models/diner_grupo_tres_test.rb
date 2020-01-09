require 'test_helper'

class DinerGrupoTresTest < ActiveSupport::TestCase
  def setup
    @diner = diners(:tres_diner1)
    @place = places(:tres_place5)
  end

  test 'Prueba correcta Actualizacion de usuario' do
    @diner.name = 'Maria'
    @diner.last_name = 'Gonzalez'
    @diner.identity_card = 'V12343234'
    @diner.gender = 'F'
    @diner.birth_date = '1995-10-13'
    @diner.place = @place
    assert @diner.save
  end

  # test 'INVALIDO actualizanco diner con nombre vacio' do
  #   @diner.name = ''
  #   @diner.valid?
  #   assert_not @diner.errors[:name].empty?, 'INVALIDO guardando diner con nombre vacio'
  # end

  # test 'INVALIDO actualizanco diner con nombre vacio, MENSAJE ERROR' do
  #   mensaje_error = 'El nombre no puede estar vacio'
  #   @diner.name = ''
  #   @diner.valid?
  #   assert_equal mensaje_error, @diner.errors[:name]
  # end

  test 'INVALIDO actualizando diner con nombre no valido' do
    @diner.name = '@#$@#$$$$'
    @diner.valid?
    assert_not @diner.errors[:name].empty?, 'INVALIDO guardando diner con nombre invalido'
  end

  test 'INVALIDO actualizando diner con nombre no valido, MENSAJE ERROR' do
    mensaje_error = ['El nombre solo puede tener caracteres alfabeticos sin espacios']
    @diner.name = '@#$@#$D$$$'
    @diner.valid?
    assert_equal mensaje_error, @diner.errors[:name]
  end

  test 'INVALIDO actualizando diner con nombre que supera la longitud' do
    @diner.name = 'ajdjfjisfdlsdlalsdfadjsfjdjfdf'
    @diner.valid?
    assert_not @diner.errors[:name].empty?, 'INVALIDO guardando diner con nombre de longitud larga'
  end

  test 'INVALIDO actualizando diner con nombre que supera la longitud, MENSAJE ERROR' do
    mensaje_error = ['El nombre debe tener maximo 20 caracteres']
    @diner.name = 'ajdjfjisfdlsdlalsdfadjsfjdjfdf'
    @diner.valid?
    assert_equal mensaje_error, @diner.errors[:name]
  end

  test 'INVALIDO actualizando diner con nombre menor a 4 caracteres' do
    @diner.name = 'ajd'
    @diner.valid?
    assert_not @diner.errors[:name].empty?, 'INVALIDO guardando diner con nombre de longitud larga'
  end

  test 'INVALIDO actualizando diner con nombre menor a 4 caracteres, MENSAJE ERROR' do
    mensaje_error = ['El nombre debe tener al menos 4 caracteres']
    @diner.name = 'ajd'
    @diner.valid?
    assert_equal mensaje_error, @diner.errors[:name]
  end

  # test 'INVALIDO actualizanco diner con apellido vacio' do
  #   @diner.last_name = ''
  #   @diner.valid?
  #   assert_not @diner.errors[:last_name].empty?, 'INVALIDO guardando diner con nombre vacio'
  # end

  # test 'INVALIDO actualizanco diner con apellido vacio, MENSAJE ERROR' do
  #   mensaje_error = 'El apellido no puede estar vacio'
  #   @diner.last_name = ''
  #   @diner.valid?
  #   assert_equal mensaje_error, @diner.errors[:last_name]
  # end

  test 'INVALIDO actualizando diner con apellido no valido' do
    @diner.last_name = '@#$@#$$$$'
    @diner.valid?
    assert_not @diner.errors[:last_name].empty?, 'INVALIDO guardando diner con apellido invalido'
  end

  test 'INVALIDO actualizando diner con apellido no valido, MENSAJE ERROR' do
    mensaje_error = ['El apellido solo puede tener caracteres alfabeticos sin espacios']
    @diner.last_name = '@#$@#$D$$$'
    @diner.valid?
    assert_equal mensaje_error, @diner.errors[:last_name]
  end

  test 'INVALIDO actualizando diner con apellido que supera la longitud' do
    @diner.last_name = 'ajdjfjisfdlsdlalsdfadjsfjdjfdf'
    @diner.valid?
    assert_not @diner.errors[:last_name].empty?, 'INVALIDO guardando diner con apellido de longitud larga'
  end

  test 'INVALIDO actualizando diner con apellido que supera la longitud, MENSAJE ERROR' do
    mensaje_error = ['El apellido debe tener maximo 20 caracteres']
    @diner.last_name = 'ajdjfjisfdlsdlalsdfadjsfjdjfdf'
    @diner.valid?
    assert_equal mensaje_error, @diner.errors[:last_name]
  end

  test 'INVALIDO actualizando diner con apellido menor a 4 caracteres' do
    @diner.last_name = 'ajd'
    @diner.valid?
    assert_not @diner.errors[:last_name].empty?, 'INVALIDO guardando diner con nombre de longitud larga'
  end

  test 'INVALIDO actualizando diner con apellido menor a 4 caracteres, MENSAJE ERROR' do
    mensaje_error = ['El apellido debe tener al menos 4 caracteres']
    @diner.last_name = 'ajd'
    @diner.valid?
    assert_equal mensaje_error, @diner.errors[:last_name]
  end

  # test 'INVALIDO actualizando diner con identificacion vacia' do
  #   @diner.identity_card = ''
  #   @diner.valid?
  #   assert_not @diner.errors[:identity_card].empty?, 'INVALIDO guardando diner con identificacion invalida'
  # end

  # test 'INVALIDO actualizando diner con identificacion vacia, MENSAJE ERROR' do
  #   mensaje_error = ['El numero de cedula no puede estar vacio']
  #   @diner.identity_card = ''
  #   @diner.valid?
  #   assert_equal mensaje_error, @diner.errors[:identity_card]
  # end

  test 'INVALIDO actualizando diner con identificacion no valida' do
    @diner.identity_card = '$#$#23232'
    @diner.valid?
    assert_not @diner.errors[:identity_card].empty?, 'INVALIDO guardando diner con identificacion invalida'
  end

  test 'INVALIDO actualizando diner con identificacion no valida, MENSAJE ERROR' do
    mensaje_error = ["Número de cédula inválido"]
    @diner.identity_card = '$#$#23232'
    @diner.valid?
    assert_equal mensaje_error, @diner.errors[:identity_card]
  end

  test 'INVALIDO actualizando diner con genero invalido' do
    @diner.gender = 'X'
    @diner.valid?
    assert_not @diner.errors[:gender].empty?, 'INVALIDO guardando diner con genero invalido'
  end

  test 'INVALIDO actualizando diner con genero invalido, MENSAJE ERROR' do
    mensaje_error = ['Sexo invalido']
    @diner.gender = 'X'
    @diner.valid?
    assert_equal mensaje_error, @diner.errors[:gender]
  end

  test 'INVALIDO actualizando diner con fecha de nacimiento invalida' do
    @diner.birth_date = '1800-10-12'
    @diner.valid?
    assert_not @diner.errors[:birth_date].empty?, 'INVALIDO guardando diner con fecha invalida'
  end

  test 'INVALIDO actualizando diner con fecha de nacimiento invalida, MENSAJE ERROR' do
    mensaje_error = ["Fecha de nacimiento inválida"]
    @diner.birth_date = '1800-10-12'
    @diner.valid?
    assert_equal mensaje_error, @diner.errors[:birth_date]
  end

  test 'INVALIDO actualizando diner con lugar inexistente' do
    @diner.place = nil
    @diner.valid?
    assert_not @diner.errors[:place].empty?, 'INVALIDO guardando diner sin lugar'
  end

  test 'INVALIDO actualizando diner con lugar inexistente, MENSAJE ERROR' do
    mensaje_error = ["El lugar no puede estar vacio"]
    @diner.place = nil
    @diner.valid?
    assert_equal mensaje_error, @diner.errors[:place]
  end

  test 'INVALIDO actualizando diner con user inexistente' do
    @diner.user = nil
    @diner.valid?
    assert_not @diner.errors[:user].empty?, 'INVALIDO guardando diner sin lugar'
  end

  test 'INVALIDO actualizando diner con user inexistente, MENSAJE ERROR' do
    mensaje_error = ["debe existir", "EL usuario no puede estar vacio"]
    @diner.user = nil
    @diner.valid?
    assert_equal mensaje_error, @diner.errors[:user]
  end
end
