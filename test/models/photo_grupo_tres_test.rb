require 'test_helper'

class PhotoGrupoTresTest < ActiveSupport::TestCase
 
 def setup
    @photo = photos(:tres_photo1)
    @invalid_photo = photos(:tres_photo2)
    @place = places(:tres_place5)
    @restaurant = restaurants(:tres_restaurant2)
 end

 test 'Prueba correcta, actualización de foto' do
    @photo.photo = 'cambio.jpg'
    @photo.restaurant = @restaurant
    @photo.place = @place
    assert @photo.save
 end

 test 'INVALIDO, actualizando photo con campo vacío' do
    @photo.photo = ''
    @photo.valid?
    assert_not @photo.errors[:photo].empty?, 'INVÁLIDO, guardando photo con campo vacio'
 end

 test 'Prueba correcta, extensión de imagen válida' do
    assert_match(/([a-zA-Z0-9\s_\\.\-\(\):])+(.png|.gif|.jpg|.jpeg)$/i, @photo.photo, 'La extensión del archivo es válida')
 end

 test 'INVALIDO, extensión de imagen no válida' do
    assert_match(/([a-zA-Z0-9\s_\\.\-\(\):])+(.png|.gif|.jpg|.jpeg)$/i, @invalid_photo.photo, 'La extensión del archivo no corresponde con una imagen válida')
 end

end
