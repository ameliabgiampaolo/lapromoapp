require 'test_helper'

class ArticleGrupoDosTest < ActiveSupport::TestCase
#***********PRUEBAS TDD ADMINISTRAR títulos H002*************#
#*****************************CREAR********************#
   test "Crear con título en blanco" do 
     a = Article.new(description: "Sed felis leo, tempor ac leo eget", topic_id: 1, user_id: 1)
     assert_not a.save, "El título no puede estar en blanco"
   end

   test "Crear con título mayor a 300 caracteres" do 
     a = Article.new(description: "Mauris in ipsum ligula. Donec in lectus libero. Cras suscipit arcu 
      eget elit feugiat, ac consectetur",topic_id: 1, user_id: 1)
     a.title = "Sed felis leo, tempor ac leo eget, accumsan faucibus libero. 
     Mauris efficitur dolor nec lobortis consectetur. Vivamus scelerisque tellus
      non ullamcorper dapibus. Mauris in ipsum ligula. Donec in lectus libero. Cras suscipit arcu 
      eget elit feugiat, ac consectetur sapien fringilla. Donec at aliquam ligula. Nam egestas lectus 
      ac mi dignissim finibus. Etiam id mauris at quam sodales blandit ac quis libero. Ut quam massa, 
      consectetur sit amet consequat sit amet, pellentesque vel lacus. Etiam et porta risus, non pellent
      esque eros. Ut at erat a lectus tempus malesuada. Sed imperdiet suscipit fermentum. Donec in lorem 
      a leo finibus consectetur. Pellentesque massa massa, tempus eu quam ac, efficitur suscipit dolor."
     assert_not a.save, "El título debe tener un máximo de 300 caracteres"
   end

   test "Crear con título menor a 10 caracteres" do
     a = Article.new(title:"t", description: "felis leo, tempor ac leo eget, accumsan faucibus libero.", topic_id: 1, user_id: 1)
     assert_not a.save, "El título debe tener un mínimo de 10 caracteres"
   end

   test "Crear con descripción en blanco" do 
     a = Article.new(title: "Lorem Ipsum", topic_id: 1, user_id: 1)
     assert_not a.save, "El contenido no puede estar en blanco"
   end

   test "Crear con descripción menor a 20 caracteres" do
     a = Article.new(title:"Lorem Ipsum", description: "Lorem Ipsum", topic_id: 1, user_id: 1)
     assert_not a.save, "El contenido debe tener un mínimo de 20 caracteres"
   end

   test "Crear con tema en blanco" do 
     a = Article.new(title: "Lorem Ipsum",description: "Mauris in ipsum ligula. Donec", user_id: 1)
     assert_not a.save, "El tema no puede estar en blanco"
   end

   test "Crear con usuario en blanco" do 
     a = Article.new(title: "Lorem Ipsum",description: "Mauris in ipsum ligula. Donec", user_id: 1)
     assert_not a.save, "El artículo debe tener autor"
   end

   test "Crear correctamente" do 
    a = Article.new(title: "Lorem Ipsum210", description: "lobortis consectetur. Vivamus scelerisque tellus
      non ullamcorper dapibus. Mauris in ipsum ligula. Donec in lectus libero. Cras suscipit arcu 
      eget elit feugiat, ac csonsectetur sapien fringilla.", topic_id: 2, user_id: 1,cont_trend:0)
    assert a.save, "ERROR. La FAQ no se ha guardado correctamente."
   end

   test "Ya existe titulo" do 
    a = Article.new(title: "¿Cómo afiliar mi restaurante?", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec purus interdum, tempor risus bibendum, bibendum justo. Duis accumsan purus sed finibus elementum. Morbi pellentesque aliquam ipsum, eu ornare velit interdum quis. Aenean eu ex sodales, finibus eros ultricies, dignissim lorem.",
     topic_id: 1, user_id: 1)
    assert Article.exists?(:title => a.title), "El título ya existe"
    assert_not a.save
   end

   test "Ya existe descripcion" do 
    a = Article.new(title: "¿Cómo afiliar mi restaurante?", description: "jLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec purus interdum, tempor risus bibendum, bibendum justo. Duis accumsan purus sed finibus elementum. Morbi pellentesque aliquam ipsum, eu ornare velit interdum quis. Aenean eu ex sodales, finibus eros ultricies, dignissim lorem.",
     topic_id: 1, user_id: 1)
    assert_not Article.exists?(:description => a.description), "El contenido ya existe"
    assert_not a.save
   end
   
   #************************CONSULTAR********************#
   test "Consulta por ID" do
     assert Article.exists?(1), "ERROR. No existen artículos con ese ID"
   end

   test "Consulta general" do
     assert_not_empty Article.all,"ERROR. No hay artículos registrados"
   end
   test "Consulta por tema (nombre del tema)" do
    a = Article.joins(:topic).includes(:topic).where("topics.id = 1")
    assert_not_empty a, "ERROR. No hay articulos registrados en este tema"
  end

#*****************************ELIMINAR********************#
  test "Eliminar" do
    if (a = Article.exists?(1)) == true
      a = Article.find(1)
      assert a.destroy
    else
      assert Article.exists?(1)
    end
  end

#*****************************MODIFICAR********************#
    test "Modificar artículo vacío" do
      article = Article.find(1)
      article.title  = ""
      article.description = ""
      article.topic_id = nil
      article.user_id = nil
      assert_not article.save, "ERROR. Los campos no pueden estar en blanco"
    end 

    test "Modificar sin descripción" do
      article = Article.find(1)
      article.title = "ganar puntajes yumis"
      article.description = " "
      assert_not article.save, "ERROR. El campo de descripción está en blanco"
    end

    test "Modificar sin título" do
      article = Article.find(1)
      article.title = ""
      article.description = "Una vez llenes el formulario, un asesor de Uber Eats te contactará para saber más sobre tu restaurante y si es compatible con el servicio."
      assert_not article.save, "ERROR. El campo de título está en blanco"
    end

    test 'Modificar título menor a 10 caracteres' do
      article = Article.find(1)
      article.title =  'a' * 4
      assert_not article.valid?, "ERROR. El título debe ser mayor a 10 caracteres"
    end

    test 'Modificar título mayor a 300 caracteres' do
      article = Article.find(1)
      article.title =  'a' * 500
      assert_not article.valid?, "ERROR. El título debe ser menor a 300 caracteres"
    end

    test 'Modificar descripción menor a 20 caracteres' do
      article = Article.find(1)
      article.description =  'aaaa' 
      assert_not article.valid?, "ERROR. La descripción debe ser mayor a 20 caracteres"
    end
end