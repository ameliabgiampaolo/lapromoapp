Rails.application.routes.draw do


  get 'topics/index'
  get 'topics/empty'
  get 'articles/index'
  get '/articles/:id/contenido', to: 'articles#contenido', as: 'contenido'
  get 'articles/empty'
  get 'articles/busqueda'
  get 'places/index'
  get 'places/empty'
  get 'restaurants/buscar_x_estado/muestra', to: 'restaurants#buscar_x_estado', as: 'muestra'
  get 'restaurants/buscar_x_tipo_comida/mostrar', to: 'restaurants#buscar_x_tipo_comida', as: 'mostrar'
  get 'home/index'
  get 'home/program_of_yumis'
  get 'home/terms_of_use'
  get 'home/contact'
  root 'home#index'

  namespace :administrador do
    get 'home', to: 'home#index'
    get '', to: 'home#index'
    resources :restaurants
    get 'approved/:id', to: 'restaurants#approve_restaurant', as: :approve
    get 'aprobados', to: 'restaurants#approved_restaurants', as: :aprobados
    get 'aprobados/:id', to: 'restaurants#cancel_restaurant', as: :cancel
    delete 'rechazar/:id', to: 'restaurants#reject_restaurant', as: :reject_restaurant
    get 'not_approved', to: 'restaurants#not_approved_restaurants', as: :not_approved
    resources :articles
    get '/articles/:id/confirm', to: 'articles#confirm', as: 'confirm'
  end
  

  namespace :restaurante do
    get 'home', to: 'home#index'
    get 'editar', to: 'restaurants#edit'
    patch 'editar', to: 'restaurants#update', as: :restaurant
    put 'editar', to: 'restaurants#update', as: nil
    post 'borrar_photo', to: 'restaurants#destroy_photo'

    resources :menu_types
    resources :promos
    resources :calendars
    resources :plates
  end

  #Ruta para info de restaurante
  get 'restaurant_info/:restaurantID', to: 'restaurants#restaurant_info', as: :restaurant_info
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, skip: :registrations, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords' }



  devise_scope :user do
    get '/users', to: redirect('/users/sign_up')
    get '/users/password', to: 'users/passwords#new'
    get '/users/sign_out', to: 'users/sessions#destroy'
    get '/users/restaurant/sign_up', to: 'users/registrations#create_restaurant'
    get 'usuario/editar', to: 'users/registrations#edit', as: :edit_user_registration
    put 'usuario/editar', to: 'users/registrations#update', as: nil
    patch 'usuario/editar', to: 'users/registrations#update', as: :user_registration
    get 'users/cancel', to: 'users/registrations#cancel', as: :cancel_user_registration
    get 'users/sign_up', to: 'users/registrations#new', as: :new_user_registration
    delete '/users', to: 'users/registrations#destroy', as: nil
    post '/users', to: 'users/registrations#create', as: nil
  end

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurant, only: [:index, :show]

  get '/diner-subscriptions', to: 'diner_subscriptions#index'
  patch '/diner-subscriptions', to: 'diner_subscriptions#update'

  namespace 'api', defaults:{format:"json"} do
    namespace 'v1' do



      #Inicio Grupo 4 rutas

        devise_for :users
        #Lista de lugares
        get 'place_list', to: 'places#place_list'

        #Lista de restaurantes por estado
        get 'restaurant_list/:id', to: 'restaurants#restaurant_list'

        #LIsta de restaurantes por tipo de comida
        get 'restaurant_name', to: 'restaurants#restaurant_name'

        get 'restaurant_address', to: 'restaurants#restaurant_address'

        get 'restaurant_kitchen_type', to: 'restaurants#restaurant_kitchen_type'

        get 'restaurant_search/:id', to: 'restaurants#restaurant_search'
        #Lista de tipo de comida
        get 'kitchen_type_list', to:'kitchen_type#kitchen_type_list'

        get 'promo_type_list', to:'promos#promo_type_list'

      #FIn Grupo 4 rutas
      # -------------------------------------------
      # Rutas de la seccion de preguntas frecuentes
      # -------------------------------------------
      get 'temas', to: 'articles#temas' # Retorna el listado de temas
      get 'articulos', to: 'articles#articulos' # Retorna el listado de articulos
      get 'art_per_tema/:id', to: 'articles#art_per_tema' # Retorna los articulos que pertenecen al tema especificado
      get 'add_tendencia/:id', to: 'articles#add_tendencia' # Aumenta la tendencia de un articulo al clickearlo

      # ------------------------------------------------
      # Rutas de la seccion de información de restaurant
      # ------------------------------------------------
      get 'restaurant_info/:id', to: 'restaurants#restaurant_info'# Retorna la info de un restaurant

      # ------------------------------------------
      # Rutas de la seccion de realizacion reserva
      # ------------------------------------------
      get 'reserva/:id', to: 'reservations#reserva' # Retorna las fechas del calendario junto a las promos

    end
  end
  # Rutas para comensal
  namespace :comensal do
    get :editar, to: 'diners#edit'
    patch :editar, to: 'diners#update', as: :diner
    post :editar, to: 'diners#update', as: :diners
  end

  # rutas para obtener estado municipio y parroquia de lugar
  get 'get_estados', to: 'places#get_states'
  get 'get_municipios', to: 'places#get_municipios'
  get 'get_parroquias', to: 'places#get_parroquias'

  #Rutas para comentarios y Opiniones

  get 'ShowOpinion/:restaurantID', to: 'comments#ShowOpinion' , as: :my_link
  get 'my_comments', to: 'comments#my_comments'

end
