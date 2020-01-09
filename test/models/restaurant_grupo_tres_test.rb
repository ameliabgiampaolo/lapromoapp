require 'test_helper'

class RestaurantGrupoTresTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end

    def setup
        @restaurant = restaurants(:three_one)
        @user = users(:three_two)
        @place = places(:three_four)
        @photo1 = photos(:three_one)
        @photo2 = photos(:three_three)
        @role = roles(:tres_restaurant)
    end 

    test 'Prueba conrrecta' do
        @restaurant.name = 'la fonda'
        @restaurant.map_location = '12.34;121.3232'
        @restaurant.capacity = 5
        @restaurant.zip_code = 1020
        @restaurant.address = 'en algun lugar'
        @restaurant.rif ='J-32432423-4'
        @restaurant.description = 'descripcion de mi restaurant la fonda'
        @restaurant.place = @place
        @restaurant.photos << @photo1 
        @restaurant.user.role = @role    
        
        puts @restaurant.errors.inspect

        assert @restaurant.save
    end


    test 'INVALIDO no actualizar nombre vacío' do        
        @restaurant.name = ''
        @restaurant.valid?

        # assert_equal mensaje_error, @restaurant.errors[:name]
        assert_not @restaurant.errors[:name].empty?, 'Invalido intenta guardar un nombre vacío' 
    end

    test 'INVALIDO nombre con caracteres especiales' do        
        mensaje_error = ["El campo nombre no puede tener caracteres especiales"]
        @restaurant.name = 'nombre)'
        @restaurant.valid?

        assert_equal mensaje_error, @restaurant.errors[:name] 
    end

    test 'INVALIDO no actualizar nombre vacío, mensaje de error' do
        # Cambiar mensaje de er cuando se sepa
        mensaje_error = "El campo nombre no puede estar vacio"
        
        @restaurant.name = ''
        @restaurant.valid?

        assert_equal mensaje_error, @restaurant.errors[:name][0]
    end


    test 'INVALIDO no actualizar descripcion vacía' do        
        @restaurant.description = ''
        @restaurant.valid?

        # assert_equal mensaje_error, @restaurant.errors[:name]
        assert_not @restaurant.errors[:description].empty?, 'Invalido intenta guardar una descripcion vacía' 
    end

    test 'INVALIDO no actualizar description vacío, mensaje de error' do
        # Cambiar mensaje de er cuando se sepa
        mensaje_error = ["El campo descripción no puede estar vacio"]
        
        @restaurant.description = ''
        @restaurant.valid?

        assert_equal mensaje_error, @restaurant.errors[:description] 
    end



    test 'INVALIDO no actualizar rif vacío' do        
        @restaurant.rif = ''
        @restaurant.valid?

        # assert_equal mensaje_error, @restaurant.errors[:name]
        assert_not @restaurant.errors[:rif].empty?, 'Invalido intenta guardar una rif vacía' 
    end

    test 'INVALIDO no actualizar rif vacío, mensaje de error' do
        # Cambiar mensaje de er cuando se sepa
        mensaje_error = "El campo RIF no puede estar vacio"
        
        @restaurant.rif = ''
        @restaurant.valid?

        assert_equal mensaje_error, @restaurant.errors[:rif][0]
    end

    test 'INVALIDO no actualizar rif con formato incorrecto, mensaje de error' do
        # Cambiar mensaje de er cuando se sepa
        mensaje_error = ["Formato del RIF incorrecto"]
        
        @restaurant.rif = 'J-2717804809'
        @restaurant.valid?

        assert_equal mensaje_error, @restaurant.errors[:rif] 
    end


    test 'INVALIDO no actualizar rif sin formato correcto' do        
        @restaurant.rif = '4r4r4r4r4'
        @restaurant.valid?

        # assert_equal mensaje_error, @restaurant.errors[:name]
        assert_not @restaurant.errors[:rif].empty?, 'Invalido intenta guardar un rif con formato incorrecto' 
    end




    
    test 'INVALIDO no actualizar address vacío' do        
        @restaurant.address = ''
        @restaurant.valid?

        # assert_equal mensaje_error, @restaurant.errors[:name]
        assert_not @restaurant.errors[:address].empty?, 'Invalido intenta guardar un address vacío' 
    end

    test 'INVALIDO no actualizar address vacío, mensaje de error' do
        # Cambiar mensaje de er cuando se sepa
        mensaje_error = ["El campo dirección no puede estar vacio"]
        
        @restaurant.address = ''
        @restaurant.valid?

        assert_equal mensaje_error, @restaurant.errors[:address] 
    end



    test 'INVALIDO no actualizar zip code vacío' do        
        @restaurant.zip_code = ''
        @restaurant.valid?

        # assert_equal mensaje_error, @restaurant.errors[:name]
        assert_not @restaurant.errors[:zip_code].empty?, 'Invalido intenta guardar un zip_code vacío' 
    end

    test 'INVALIDO no actualizar zip_code vacío, mensaje de error' do
        # Cambiar mensaje de er cuando se sepa
        mensaje_error = "El campo zona postal no puede estar vacio"
        
        @restaurant.zip_code = ''
        @restaurant.valid?

        assert_equal mensaje_error, @restaurant.errors[:zip_code][0]
    end

    test 'INVALIDO no actualizar zip code que no contenga solo numeros' do        
        @restaurant.zip_code = 'e44tt'
        @restaurant.valid?

        # assert_equal mensaje_error, @restaurant.errors[:name]
        assert_not @restaurant.errors[:zip_code].empty?, 'Invalido intenta guardar un zip_code sin formato' 
    end

    test 'INVALIDO no actualizar zip_code que no contenga solo numeros, mensaje de error' do
        # Cambiar mensaje de er cuando se sepa
        mensaje_error = ["El campo zona postal debe ingresar solo números"]
        
        @restaurant.zip_code = 'rf30'
        @restaurant.valid?

        assert_equal mensaje_error, @restaurant.errors[:zip_code] 
    end





    test 'INVALIDO no actualizar horario ' do  
        mensaje_error = ['El campo Hora de cierre no puede ser menor que hora de apertura']      
        @restaurant.start_time = '22:30'
        # @restaurant.end_time = '13:30'
        # @restaurant.end_time = nil

        @restaurant.end_time = ''

        
        @restaurant.valid?

        # assert_equal mensaje_error, @restaurant.errors[:name]

        assert_not @restaurant.errors[:end_time].empty?, 'Invalido intenta guardar un horario mal'    
    end

    test 'INVALIDO INVALIDO no actualizar horario hora fin menor que hora inicio ' do
        # Cambiar mensaje de er cuando se sepa
        mensaje_error = ["El campo Hora de cierre no puede ser menor o igual que el campo hora de apertura"]
                
        @restaurant.start_time = '22:30'
        @restaurant.end_time = '13:30'
        @restaurant.valid?

        assert_equal mensaje_error, @restaurant.errors[:end_time] 
    end




    
    test 'INVALIDO no actualizar place null' do        
        @restaurant.place = nil
        @restaurant.valid?

        # assert_equal mensaje_error, @restaurant.errors[:name]
        assert_not @restaurant.errors[:place]==nil, 'Invalido intenta guardar un place nulo' 
    end

    test 'INVALIDO no actualizar place vacío, mensaje de error' do
        # Cambiar mensaje de er cuando se sepa
        mensaje_error = ["debe existir"]
        
        @restaurant.place = nil
        @restaurant.valid?

        assert_equal mensaje_error, @restaurant.errors[:place] 
    end
end
