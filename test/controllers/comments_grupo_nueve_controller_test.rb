require 'test_helper'

class CommentsGrupoNueveControllerTest < ActionController::TestCase
    
    include Devise::Test::ControllerHelpers
    
    def setup
        @controller = CommentsController.new
    end
    # test para mensajes de error en case de que no hayan comentarios
    test " Mensaje de error cuando no existen opiniones del restaurante seleccionado " do
        get :ShowOpinion,params:{restaurantID:1}
        assert_equal 'No hay opiniones para este restaurant',flash[:warning]
    end
    # test para visualizar las opiniones en caso de que existan
    test " El usuario visualiza las opiniones de un restaurant " do
       
        get :ShowOpinion,params:{restaurantID:1}
        assert_not_nil assigns(:opiniones)
    end
    # test para mensajes de erro en caso de que no existan comentarios 
    test "Mensaje de error en personal_comments si no hay opiniones personales" do
      get :my_comments
      assert 'No tienes opiniones realizadas', flash[:warning]
    end
    # test para visualizar opiniones personales
    test "Mostrar las opiniones personales del usuario" do 
      get :my_comments
      assert_not_nil assigns(:opinions)
    end

end
    
  
    

