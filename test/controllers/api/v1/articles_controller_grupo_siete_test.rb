require 'test_helper'
require "minitest/autorun"

class ArticlesControllerTest < ActionController::TestCase

    def setup
        @controller = Api::V1::ArticlesController.new
    end

    #   ------------------------------
    #   Test de preguntas frecuentes
    #   ------------------------------

    test "Mostrar las preguntas frencuentes registradas en el sistema" do
        get 'articulos'
        resp = JSON.parse(response.body)
        assert_not resp['articles'].nil?
    end

    test "Mensajes cuando no hay preguntas frecuentes" do
        Article.destroy_all
        get 'articulos'
        resp = JSON.parse(response.body)
        assert_equal 'Actualmente no se tiene preguntas registradas.', flash[:description]
    end

    test "Mostrar información del articulo seleccionado" do
        get 'articulos'
        resp = JSON.parse(response.body)
        assert_not resp['articles'][0]['description'].empty?
    end

    test "Mostrar todos los articulos de un respectivo tema para preguntas frecuentes" do
        get 'art_per_tema', params:{:id => "701"}
        resp = JSON.parse(response.body)
        assert_not resp["articulos"].empty?
    end

    test "Mostrar error cuando no se consigue articulos de un respectivo tema para preguntas frecuentes" do
        get 'art_per_tema', params:{:id => "702"}
        resp = JSON.parse(response.body)
        assert_equal  "No se consiguieron articulos de este tema.", flash[:description]
    end

    test "Aumentar la tendecia de un tema consultado" do
        get 'art_per_tema', params:{:id => "702"}
        resp = JSON.parse(response.body)
        assert_equal  2, resp["contador"]
    end

    test "Mostrar aumento en tendecia de un articulo consultado" do
        get 'add_tendencia', params:{:id => "701"}
        resp = JSON.parse(response.body)
        assert_equal  33, resp["cont_trend"]
    end

end
