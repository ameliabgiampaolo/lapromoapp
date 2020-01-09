require 'test_helper'

class TopicGrupoDosTest < ActiveSupport::TestCase

  #**************CONSULTAR**************#
	test "Consulta general de temas" do
	 assert_not_empty Topic.all,"ERROR. No hay temas registrados"
	end

	test "Consulta del tema Restaurantes" do
		a = Article.joins(:topic).includes(:topic).where("topics.id = 1")
		assert_not_empty a, "ERROR. El tema no posee articulos"
	end

	test "Consulta del tema (nombre del tema)" do
		a = Article.joins(:topic).includes(:topic).where("topics.id = 1")
		assert_not_empty a, "ERROR. El tema no posee articulos"
	end

	
end
