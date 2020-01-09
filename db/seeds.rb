# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#Roles- seeds
puts 'roles_seed'
roles = Role::ROLES
roles.each do |role|
  Role.find_or_create_by!(name: role)
end

puts "user_seed"
User.create(user_name: "marcoali", email: "marco4soul@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 1, confirmed_at: Time.now)

User.create(user_name: "RobertoVazquez", email: "robjve94@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 555-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "Angelaltuve", email: "angel@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 134-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "davidserrada", email: "david@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 134-3222",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "edersonmoncada", email: "ederson@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-2222",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "rafael123", email: "rafa@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 134-3324",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "marioali", email: "mario@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(424) 244-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "Pepe123", email: "pepe@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 134-5555",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "Carlosanoja", email: "carlos@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 134-6666",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "joselito", email: "joselito@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(424) 164-3223",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "meneses", email: "meneses@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(212) 134-3563",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "Hamjel", email: "Hamjel@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "Dabi", email: "dabi@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "manufigue", email: "manufigue@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "olabolas", email: "olabolas@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "manufigue2", email: "manufigue2@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "nelsonmanela", email: "salvatierra@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "pmbook", email: "pmbook@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "pmbook2", email: "pmbook2@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "ayudaaa", email: "porfavooor@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "saquenme11", email: "deaqui1@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "chiabe", email: "chiabee@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "maburro", email: "bigotes@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "whydogge", email: "vamosbien@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "magurthanos", email: "esinevitable@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(user_name: "magurthanos2", email: "esinevitable2@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",

  role_id: 2, confirmed_at: Time.now)
User.create(user_name: "magurthanos3", email: "esinevitable23@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)
User.create(user_name: "magurthanos4", email: "esinevitable3@gmail.com",
  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333",
  role_id: 2, confirmed_at: Time.now)

User.create(confirmed_at: Time.now, user_name: "marcoali2", email: "marco@gmail.com",  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333", role_id: 1)

user_g8 = User.create(confirmed_at: Time.now, user_name: "luisvdbk", email: "luisvdbk312@gmail.com",  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333", role_id: 3)
user_g9 = User.create(confirmed_at: Time.now, user_name: "angel20", email: "angel2@gmail.com",  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333", role_id: 3)
user_g10 = User.create(confirmed_at: Time.now, user_name: "dabik20", email: "david2@gmail.com",  password: "123456",password_confirmation: "123456", phone: "(414) 133-3333", role_id: 3)

Topic.create(name:"Primeros pasos", image: "https://live.staticflickr.com/65535/49148628297_02dec1d471_o.jpg",cont_trend:0)
Topic.create(name:"Búsquedas", image: "https://live.staticflickr.com/65535/49147927718_8d681a5ebc_o.jpg",cont_trend:0)
Topic.create(name:"Reservas", image: "https://live.staticflickr.com/65535/49148419601_2852176c98_b.jpg",cont_trend:0)
Topic.create(name:"Proveedores de servicio", image: "https://live.staticflickr.com/65535/49148628467_7c2e3404fd_b.jpg",cont_trend:0)
Topic.create(name:"Acabo de reservar", image:"https://live.staticflickr.com/65535/49148419311_daac5c9107_o.jpg",cont_trend:0)
Topic.create(name:"Opiniones", image: "https://live.staticflickr.com/65535/49149216396_f0aafc32b9_o.jpg",cont_trend:0)
Topic.create(name:"Promociones",image:"https://live.staticflickr.com/65535/49148419376_b8bd6b3f77_o.jpg",cont_trend:0)
Topic.create(name:"Cuenta",image:"https://live.staticflickr.com/65535/49149203331_2f5302ce88_o.jpg",cont_trend:0)
Topic.create(name:"Yumis",image: "https://live.staticflickr.com/65535/49149203526_88911592c9_o.jpg",cont_trend:0)

# DE FAQs
Article.create(title: "¿Quieres colaborar con nosotros?", description: "¿Le gustaría ser nuestro socio?

Si es propietario de un restaurante, puede registrarse a través de este formulario y nuestro equipo de ventas se pondrá en contacto con usted en breve para completar toda la información necesaria.

También estamos abiertos a considerar sus ideas para cualquier tipo de asociación o colaboración. Puede enviar su propuesta a nuestro equipo de Afiliados en nuestro sitio web.
Verán la propuesta y se comunicarán con usted si pueden seguir su proyecto.

Si desea agregar información adicional o solicitar una respuesta a una solicitud previa, comuníquese con nuestro equipo de alianzas en el mismo enlace de arriba.",
cont_trend: 0, user_id: 1, topic_id: 1)

Article.create(title: "¿Cómo filtrar tu búsqueda?", description: "¿Estás buscando un restaurante italiano, un Insider, tal vez uno con terraza? ¿O tal vez las tres cosas al mismo tiempo?

Pincha en la barra de búsqueda, ingresa el tipo de cocina (italiana, francesa, libanesa ...) o el ambiente (acogedor, romántico, de negocios ...) que estás buscando. En la barra de búsqueda a continuación, ingresa la ciudad donde te gustaría encontrar el restaurante.

Una vez que obtengas la lista de resultados, no dudes en aplicar más filtros (en la parte inferior de la pantalla) para encontrar el restaurante que mejor se adapte a tus necesidades actuales: tipo de cocina, ambiente, servicios, restricciones de alimentos, etc.

¿Estás usando un ordenador? No es necesario que ingreses esas palabras clave durante tu primera búsqueda. Solo necesitas aplicar los filtros en la barra izquierda para limitar tu lista de resultados.",
 cont_trend: 0, user_id: 1, topic_id: 2)

Article.create(title: "¿Cómo realizar una reserva?", description: "¿Es la primera vez que vas a reservar a través de ElTenedor? ¡sigue estos pasos!

    Accede a LAPROMO
    Selecciona tu ciudad o dirección, la fecha, hora y el número de personas.
    Dale a la flecha que te aparecerá a la derecha del cuadro de búsqueda.
    ¡Usa y abusa de nuestros filtros para elegir tu restaurante ideal!


Una vez escogido el restaurante:

    Selecciona Continuar.
    Indica tu email.
    Si no tienes cuenta, rellena el formulario con tus datos.
    Pulsa en Finaliza tu reserva.


Una vez realizada la reserva se genera un email de confirmación informándote del estado de tu reserva. ¡Buen provecho!",
cont_trend: 0, user_id: 1, topic_id: 3)

Article.create(title: "¿Cómo dejar mi opinión?", description: "Siempre que hayas disfrutado de tu reserva, recibirás un email invitándote a dejar tú opinión sobre tu experiencia gastronómica.

Podrás acceder al formulario directamente desde este correo haciendo clic en "'Opina ahora'" o bien desde tu cuenta de usuario en el apartado "'Mis reservas'".

¿Has borrado tu correo y reservaste sin crear una cuenta de usuario? ¡Buenas noticias!, puedes dejar tu opinón también! Pincha “Inicia Sessión”, en la parte superior derecha de la página principal de nuestra web utilizando la misma dirección de correo que utilizaste para hacer tu reserva y ¡crea tu cuenta! Asi podrás dejar tu opinión de la misma manera.

¡Tu opinión es esencial para la comunidad LAPROMO!",
cont_trend: 0, user_id: 1, topic_id: 6)

Article.create(title: "¿Me tratarán de manera diferente por reservar con una promoción?",
  description: "Todos los restaurantes asociados a LAPROMO se comprometen a tratar a todos los clientes de la misma manera.

De la calidad a la cantidad, te cuidarán de la misma forma que los clientes que no reservaron a través de LAPROMO.",
cont_trend: 0, user_id: 1, topic_id: 7)

Article.create(title: "¿Cómo modificar mi cuenta LAPROOMO?", description: "¿Quieres modificar tu correo, número de teléfono u otros datos personales?

Desde la App:

- Accede a tu cuenta y haz clic en el lápiz arriba a la derecha
- Efectúa los cambios necesarios y no olvides de Guardar

Desde la página web:

- Accede a tu cuenta y entra en la sección Mis ajustes
- Efectúa los cambios necesarios y no olvides de Actualizar

¿Quieres modificar la recepción de nuestras newsletters y mensajes push?

Desde la App:

- Accede a tu cuenta y haz clic en Ajustes
- Efectúa los cambios necesarios

Desde la página web:

- Accede a tu cuenta y entra en la sección Mis suscripciones
- Efectúa los cambios necesarios y no olvides de Actualizar

Importante: Las suscripciones no se aplican en los emails relacionados con tu reserva o la gestión de tu cuenta en ningún caso.",
cont_trend: 0, user_id: 1, topic_id: 8)

Article.create(title: "¿En qué países puedo utilizar mis Yumis?", description: "Solo en Venezuela para los restaurantes que pertenecen a LAPROMO",
  cont_trend: 0, user_id: 1, topic_id: 9)

Article.create(title: "El restaurante ha cancelado mi reserva. ¿Qué hago?", description: "¡Lo sentimos mucho! Son situaciones esporádicas y te garantizamos que trabajamos duro para evitarlas.

En este caso, te compensamos automáticamente con 100 Yums y te invitamos a contactarnos por chat o través la opción Contacta con nosotros desde la App, indicándonos los detalles de la reserva.

Una vez recibida tu solicitud, haremos las verificaciones pertinentes con el restaurante y te contactaremos en breve.",
cont_trend: 0, user_id: 1, topic_id: 5)


Article.create(title:'¿En qué benefician los Yumis a mi establecimiento?',description:'Aunque puede que parezca una pérdida
    para su negocio ya que no está obteniendo el precio completo de sus productos ofrecidos, en verdad
    estará aumentando sus ingresos en gran manera. Las promociones y los Yumis son los mejores métodos para
    obtener nuevos clientes, ya que la mayoría de ellos siempre está en búsqueda de los mejores precios.',topic_id:4,user_id:1,cont_trend:0)
#-------------------------------------------------------------------------------------------------------------------------

User.create(user_name: "marcoali", email: "marco4soul@gmail.com", password: "123456",password_confirmation: "123456",phone: "(414)1333333", role_id: 1)
#-------------------------------------------------------------------------------------------------------------------------

puts "places_seed"
Place.create(name:'Venezuela',type_place:'pais')

Place.create(name:'Amazonas',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137790246_5ff4811f52_b.jpg',place_id:2)

Place.create(name:'Anzoátegui',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49136939691_e1fa875148_o.jpg',place_id:3)

Place.create(name:'Apure',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137787021_253a9dd972_o.jpg',place_id:4)

Place.create(name:'Aragua',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137294363_22e643859a_b.jpg',place_id:5)

Place.create(name:'Barinas',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137289733_5c5c21f187_o.jpg',place_id:6)

Place.create(name:'Bolívar',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137135577_55c1fc1330_b.jpg',place_id:7)

Place.create(name:'Carabobo',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137332498_cd175912d6_o.jpg',place_id:8)

Place.create(name:'Cojedes',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137289508_0823fcc9a5_b.jpg',place_id:9)

Place.create(name:'Delta Amacuro',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137289308_bbed99a882_o.png',place_id:10)

Place.create(name:'Falcón',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137780641_b7fc10b9b9_b.jpg',place_id:11)

Place.create(name:'Guárico',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137288298_4cc23b3011_o.jpg',place_id:12)

Place.create(name:'Lara',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137780186_00681c6dfe_b.jpg',place_id:13)

Place.create(name:'Mérida',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137332308_f124d26c28_b.jpg',place_id:14)

Place.create(name:'Miranda',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137287813_6f2cc406cd_b.jpg',place_id:15)

Place.create(name:'Monagas',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137975092_1e95137fdc_b.jpg',place_id:16)

Place.create(name:'Nueva Esparta',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137285923_e440df37e1_b.jpg',place_id:17)

Place.create(name:'Portuguesa',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137974237_94573425ae_b.jpg',place_id:18)

Place.create(name:'Sucre',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137776116_a889aa5c01_o.jpg',place_id:19)

Place.create(name:'Táchira',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137282713_715f1b0174_b.jpg',place_id:20)

Place.create(name:'Trujillo',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137281058_051616770f_b.jpg',place_id:21)

Place.create(name:'Vargas',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137331883_deac3846ef_b.jpg',place_id:22)

Place.create(name:'Yaracuy',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137279743_8ccb7b7bf6_b.jpg',place_id:23)

Place.create(name:'Zulia',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49137278278_3234a968d3_o.jpg',place_id:24)

Place.create(name:'Distrito Capital',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49136447898_c37776dc1b_o.png',place_id:25)

Place.create(name:'Dependencias Federales',type_place:'estado',place_id:1)
Photo.create(photo:'https://live.staticflickr.com/65535/49139277583_ffb9dd9855_o.jpg',place_id:26)

Place.create(name:'Alto Orinoco',type_place:'municipio',place_id:2)

Place.create(name:'Atabapo',type_place:'municipio',place_id:2)

Place.create(name:'Atures',type_place:'municipio',place_id:2)

Place.create(name:'Autana',type_place:'municipio',place_id:2)

Place.create(name:'Manapiare',type_place:'municipio',place_id:2)

Place.create(name:'Maroa',type_place:'municipio',place_id:2)

Place.create(name:'Río Negro',type_place:'municipio',place_id:2)

Place.create(name:'Anaco',type_place:'municipio',place_id:3)

Place.create(name:'Aragua',type_place:'municipio',place_id:3)

Place.create(name:'Manuel Ezequiel Bruzual',type_place:'municipio',place_id:3)

Place.create(name:'Diego Bautista Urbaneja',type_place:'municipio',place_id:3)

Place.create(name:'Fernando Peñalver',type_place:'municipio',place_id:3)

Place.create(name:'Francisco Del Carmen Carvajal',type_place:'municipio',place_id:3)

Place.create(name:'General Sir Arthur McGregor',type_place:'municipio',place_id:3)

Place.create(name:'Guanta',type_place:'municipio',place_id:3)

Place.create(name:'Independencia',type_place:'municipio',place_id:3)

Place.create(name:'José Gregorio Monagas',type_place:'municipio',place_id:3)

Place.create(name:'Juan Antonio Sotillo',type_place:'municipio',place_id:3)

Place.create(name:'Juan Manuel Cajigal',type_place:'municipio',place_id:3)

Place.create(name:'Libertad',type_place:'municipio',place_id:3)

Place.create(name:'Francisco de Miranda',type_place:'municipio',place_id:3)

Place.create(name:'Pedro María Freites',type_place:'municipio',place_id:3)

Place.create(name:'Píritu',type_place:'municipio',place_id:3)

Place.create(name:'San José de Guanipa',type_place:'municipio',place_id:3)

Place.create(name:'San Juan de Capistrano',type_place:'municipio',place_id:3)

Place.create(name:'Santa Ana',type_place:'municipio',place_id:3)

Place.create(name:'Simón Bolívar',type_place:'municipio',place_id:3)

Place.create(name:'Simón Rodríguez',type_place:'municipio',place_id:3)

Place.create(name:'Achaguas',type_place:'municipio',place_id:4)

Place.create(name:'Biruaca',type_place:'municipio',place_id:4)

Place.create(name:'Muñóz',type_place:'municipio',place_id:4)

Place.create(name:'Páez',type_place:'municipio',place_id:4)

Place.create(name:'Pedro Camejo',type_place:'municipio',place_id:4)

Place.create(name:'Rómulo Gallegos',type_place:'municipio',place_id:4)

Place.create(name:'San Fernando',type_place:'municipio',place_id:4)

Place.create(name:'Atanasio Girardot',type_place:'municipio',place_id:5)

Place.create(name:'Bolívar',type_place:'municipio',place_id:5)

Place.create(name:'Camatagua',type_place:'municipio',place_id:5)

Place.create(name:'Francisco Linares Alcántara',type_place:'municipio',place_id:5)

Place.create(name:'José Ángel Lamas',type_place:'municipio',place_id:5)

Place.create(name:'José Félix Ribas',type_place:'municipio',place_id:5)

Place.create(name:'José Rafael Revenga',type_place:'municipio',place_id:5)

Place.create(name:'Libertador',type_place:'municipio',place_id:5)

Place.create(name:'Mario Briceño Iragorry',type_place:'municipio',place_id:5)

Place.create(name:'Ocumare de la Costa de Oro',type_place:'municipio',place_id:5)

Place.create(name:'San Casimiro',type_place:'municipio',place_id:5)

Place.create(name:'San Sebastián',type_place:'municipio',place_id:5)

Place.create(name:'Santiago Mariño',type_place:'municipio',place_id:5)

Place.create(name:'Santos Michelena',type_place:'municipio',place_id:5)

Place.create(name:'Sucre',type_place:'municipio',place_id:5)

Place.create(name:'Tovar',type_place:'municipio',place_id:5)

Place.create(name:'Urdaneta',type_place:'municipio',place_id:5)

Place.create(name:'Zamora',type_place:'municipio',place_id:5)

Place.create(name:'Alberto Arvelo Torrealba',type_place:'municipio',place_id:6)

Place.create(name:'Andrés Eloy Blanco',type_place:'municipio',place_id:6)

Place.create(name:'Antonio José de Sucre',type_place:'municipio',place_id:6)

Place.create(name:'Arismendi',type_place:'municipio',place_id:6)

Place.create(name:'Barinas',type_place:'municipio',place_id:6)

Place.create(name:'Bolívar',type_place:'municipio',place_id:6)

Place.create(name:'Cruz Paredes',type_place:'municipio',place_id:6)

Place.create(name:'Ezequiel Zamora',type_place:'municipio',place_id:6)

Place.create(name:'Obispos',type_place:'municipio',place_id:6)

Place.create(name:'Pedraza',type_place:'municipio',place_id:6)

Place.create(name:'Rojas',type_place:'municipio',place_id:6)

Place.create(name:'Sosa',type_place:'municipio',place_id:6)

Place.create(name:'Caroní',type_place:'municipio',place_id:7)

Place.create(name:'Cedeño',type_place:'municipio',place_id:7)

Place.create(name:'El Callao',type_place:'municipio',place_id:7)

Place.create(name:'Gran Sabana',type_place:'municipio',place_id:7)

Place.create(name:'Heres',type_place:'municipio',place_id:7)

Place.create(name:'Piar',type_place:'municipio',place_id:7)

Place.create(name:'Angostura (Raúl Leoni)',type_place:'municipio',place_id:7)

Place.create(name:'Roscio',type_place:'municipio',place_id:7)

Place.create(name:'Sifontes',type_place:'municipio',place_id:7)

Place.create(name:'Sucre',type_place:'municipio',place_id:7)

Place.create(name:'Padre Pedro Chien',type_place:'municipio',place_id:7)

Place.create(name:'Bejuma',type_place:'municipio',place_id:8)

Place.create(name:'Carlos Arvelo',type_place:'municipio',place_id:8)

Place.create(name:'Diego Ibarra',type_place:'municipio',place_id:8)

Place.create(name:'Guacara',type_place:'municipio',place_id:8)

Place.create(name:'Juan José Mora',type_place:'municipio',place_id:8)

Place.create(name:'Libertador',type_place:'municipio',place_id:8)

Place.create(name:'Los Guayos',type_place:'municipio',place_id:8)

Place.create(name:'Miranda',type_place:'municipio',place_id:8)

Place.create(name:'Montalbán',type_place:'municipio',place_id:8)

Place.create(name:'Naguanagua',type_place:'municipio',place_id:8)

Place.create(name:'Puerto Cabello',type_place:'municipio',place_id:8)

Place.create(name:'San Diego',type_place:'municipio',place_id:8)

Place.create(name:'San Joaquín',type_place:'municipio',place_id:8)

Place.create(name:'Valencia',type_place:'municipio',place_id:8)

Place.create(name:'Anzoátegui',type_place:'municipio',place_id:9)

Place.create(name:'Tinaquillo',type_place:'municipio',place_id:9)

Place.create(name:'Girardot',type_place:'municipio',place_id:9)

Place.create(name:'Lima Blanco',type_place:'municipio',place_id:9)

Place.create(name:'Pao de San Juan Bautista',type_place:'municipio',place_id:9)

Place.create(name:'Ricaurte',type_place:'municipio',place_id:9)

Place.create(name:'Rómulo Gallegos',type_place:'municipio',place_id:9)

Place.create(name:'San Carlos',type_place:'municipio',place_id:9)

Place.create(name:'Tinaco',type_place:'municipio',place_id:9)

Place.create(name:'Antonio Díaz',type_place:'municipio',place_id:10)

Place.create(name:'Casacoima',type_place:'municipio',place_id:10)

Place.create(name:'Pedernales',type_place:'municipio',place_id:10)

Place.create(name:'Tucupita',type_place:'municipio',place_id:10)

Place.create(name:'Acosta',type_place:'municipio',place_id:11)

Place.create(name:'Bolívar',type_place:'municipio',place_id:11)

Place.create(name:'Buchivacoa',type_place:'municipio',place_id:11)

Place.create(name:'Cacique Manaure',type_place:'municipio',place_id:11)

Place.create(name:'Carirubana',type_place:'municipio',place_id:11)

Place.create(name:'Colina',type_place:'municipio',place_id:11)

Place.create(name:'Dabajuro',type_place:'municipio',place_id:11)

Place.create(name:'Democracia',type_place:'municipio',place_id:11)

Place.create(name:'Falcón',type_place:'municipio',place_id:11)

Place.create(name:'Federación',type_place:'municipio',place_id:11)

Place.create(name:'Jacura',type_place:'municipio',place_id:11)

Place.create(name:'José Laurencio Silva',type_place:'municipio',place_id:11)

Place.create(name:'Los Taques',type_place:'municipio',place_id:11)

Place.create(name:'Mauroa',type_place:'municipio',place_id:11)

Place.create(name:'Miranda',type_place:'municipio',place_id:11)

Place.create(name:'Monseñor Iturriza',type_place:'municipio',place_id:11)

Place.create(name:'Palmasola',type_place:'municipio',place_id:11)

Place.create(name:'Petit',type_place:'municipio',place_id:11)

Place.create(name:'Píritu',type_place:'municipio',place_id:11)

Place.create(name:'San Francisco',type_place:'municipio',place_id:11)

Place.create(name:'Sucre',type_place:'municipio',place_id:11)

Place.create(name:'Tocópero',type_place:'municipio',place_id:11)

Place.create(name:'Unión',type_place:'municipio',place_id:11)

Place.create(name:'Urumaco',type_place:'municipio',place_id:11)

Place.create(name:'Zamora',type_place:'municipio',place_id:11)

Place.create(name:'Camaguán',type_place:'municipio',place_id:12)

Place.create(name:'Chaguaramas',type_place:'municipio',place_id:12)

Place.create(name:'El Socorro',type_place:'municipio',place_id:12)

Place.create(name:'José Félix Ribas',type_place:'municipio',place_id:12)

Place.create(name:'José Tadeo Monagas',type_place:'municipio',place_id:12)

Place.create(name:'Juan Germán Roscio',type_place:'municipio',place_id:12)

Place.create(name:'Julián Mellado',type_place:'municipio',place_id:12)

Place.create(name:'Las Mercedes',type_place:'municipio',place_id:12)

Place.create(name:'Leonardo Infante',type_place:'municipio',place_id:12)

Place.create(name:'Pedro Zaraza',type_place:'municipio',place_id:12)

Place.create(name:'Ortíz',type_place:'municipio',place_id:12)

Place.create(name:'San Gerónimo de Guayabal',type_place:'municipio',place_id:12)

Place.create(name:'San José de Guaribe',type_place:'municipio',place_id:12)

Place.create(name:'Santa María de Ipire',type_place:'municipio',place_id:12)

Place.create(name:'Sebastián Francisco de Miranda',type_place:'municipio',place_id:12)

Place.create(name:'Andrés Eloy Blanco',type_place:'municipio',place_id:13)

Place.create(name:'Crespo',type_place:'municipio',place_id:13)

Place.create(name:'Iribarren',type_place:'municipio',place_id:13)

Place.create(name:'Jiménez',type_place:'municipio',place_id:13)

Place.create(name:'Morán',type_place:'municipio',place_id:13)

Place.create(name:'Palavecino',type_place:'municipio',place_id:13)

Place.create(name:'Simón Planas',type_place:'municipio',place_id:3)

Place.create(name:'Torres',type_place:'municipio',place_id:13)

Place.create(name:'Urdaneta',type_place:'municipio',place_id:13)

Place.create(name:'Alberto Adriani',type_place:'municipio',place_id:14)

Place.create(name:'Andrés Bello',type_place:'municipio',place_id:14)

Place.create(name:'Antonio Pinto Salinas',type_place:'municipio',place_id:14)

Place.create(name:'Aricagua',type_place:'municipio',place_id:14)

Place.create(name:'Arzobispo Chacón',type_place:'municipio',place_id:14)

Place.create(name:'Campo Elías',type_place:'municipio',place_id:14)

Place.create(name:'Caracciolo Parra Olmedo',type_place:'municipio',place_id:14)

Place.create(name:'Cardenal Quintero',type_place:'municipio',place_id:14)

Place.create(name:'Guaraque',type_place:'municipio',place_id:14)

Place.create(name:'Julio César Salas',type_place:'municipio',place_id:14)

Place.create(name:'Justo Briceño',type_place:'municipio',place_id:14)

Place.create(name:'Libertador',type_place:'municipio',place_id:14)

Place.create(name:'Miranda',type_place:'municipio',place_id:14)

Place.create(name:'Obispo Ramos de Lora',type_place:'municipio',place_id:14)

Place.create(name:'Padre Noguera',type_place:'municipio',place_id:14)

Place.create(name:'Pueblo Llano',type_place:'municipio',place_id:14)

Place.create(name:'Rangel',type_place:'municipio',place_id:14)

Place.create(name:'Rivas Dávila',type_place:'municipio',place_id:14)

Place.create(name:'Santos Marquina',type_place:'municipio',place_id:14)

Place.create(name:'Sucre',type_place:'municipio',place_id:14)

Place.create(name:'Tovar',type_place:'municipio',place_id:14)

Place.create(name:'Tulio Febres Cordero',type_place:'municipio',place_id:14)

Place.create(name:'Zea',type_place:'municipio',place_id:14)

Place.create(name:'Acevedo',type_place:'municipio',place_id:15)

Place.create(name:'Andrés Bello',type_place:'municipio',place_id:15)

Place.create(name:'Baruta',type_place:'municipio',place_id:15)

Place.create(name:'Brión',type_place:'municipio',place_id:15)

Place.create(name:'Buroz',type_place:'municipio',place_id:15)

Place.create(name:'Carrizal',type_place:'municipio',place_id:15)

Place.create(name:'Chacao',type_place:'municipio',place_id:15)

Place.create(name:'Cristóbal Rojas',type_place:'municipio',place_id:15)

Place.create(name:'El Hatillo',type_place:'municipio',place_id:15)

Place.create(name:'Guaicaipuro',type_place:'municipio',place_id:15)

Place.create(name:'Independencia',type_place:'municipio',place_id:15)

Place.create(name:'Lander',type_place:'municipio',place_id:15)

Place.create(name:'Los Salias',type_place:'municipio',place_id:15)

Place.create(name:'Páez',type_place:'municipio',place_id:15)

Place.create(name:'Paz Castillo',type_place:'municipio',place_id:15)

Place.create(name:'Pedro Gual',type_place:'municipio',place_id:15)

Place.create(name:'Plaza',type_place:'municipio',place_id:15)

Place.create(name:'Simón Bolívar',type_place:'municipio',place_id:15)

Place.create(name:'Sucre',type_place:'municipio',place_id:15)

Place.create(name:'Urdaneta',type_place:'municipio',place_id:15)

Place.create(name:'Zamora',type_place:'municipio',place_id:15)

Place.create(name:'Acosta',type_place:'municipio',place_id:16)

Place.create(name:'Aguasay',type_place:'municipio',place_id:16)

Place.create(name:'Bolívar',type_place:'municipio',place_id:16)

Place.create(name:'Caripe',type_place:'municipio',place_id:16)

Place.create(name:'Cedeño',type_place:'municipio',place_id:16)

Place.create(name:'Ezequiel Zamora',type_place:'municipio',place_id:16)

Place.create(name:'Libertador',type_place:'municipio',place_id:16)

Place.create(name:'Maturín',type_place:'municipio',place_id:16)

Place.create(name:'Piar',type_place:'municipio',place_id:16)

Place.create(name:'Punceres',type_place:'municipio',place_id:16)

Place.create(name:'Santa Bárbara',type_place:'municipio',place_id:16)

Place.create(name:'Sotillo',type_place:'municipio',place_id:16)

Place.create(name:'Uracoa',type_place:'municipio',place_id:16)

Place.create(name:'Antolín del Campo',type_place:'municipio',place_id:17)

Place.create(name:'Arismendi',type_place:'municipio',place_id:17)

Place.create(name:'García',type_place:'municipio',place_id:17)

Place.create(name:'Gómez',type_place:'municipio',place_id:17)

Place.create(name:'Maneiro',type_place:'municipio',place_id:17)

Place.create(name:'Marcano',type_place:'municipio',place_id:17)

Place.create(name:'Mariño',type_place:'municipio',place_id:17)

Place.create(name:'Península de Macanao',type_place:'municipio',place_id:17)

Place.create(name:'Tubores',type_place:'municipio',place_id:17)

Place.create(name:'Villalba',type_place:'municipio',place_id:17)

Place.create(name:'Díaz',type_place:'municipio',place_id:17)

Place.create(name:'Agua Blanca',type_place:'municipio',place_id:18)

Place.create(name:'Araure',type_place:'municipio',place_id:18)

Place.create(name:'Esteller',type_place:'municipio',place_id:18)

Place.create(name:'Guanare',type_place:'municipio',place_id:18)

Place.create(name:'Guanarito',type_place:'municipio',place_id:18)

Place.create(name:'Monseñor José Vicente de Unda',type_place:'municipio',place_id:18)

Place.create(name:'Ospino',type_place:'municipio',place_id:18)

Place.create(name:'Páez',type_place:'municipio',place_id:18)

Place.create(name:'Papelón',type_place:'municipio',place_id:18)

Place.create(name:'San Genaro de Boconoíto',type_place:'municipio',place_id:18)

Place.create(name:'San Rafael de Onoto',type_place:'municipio',place_id:18)

Place.create(name:'Santa Rosalía',type_place:'municipio',place_id:18)

Place.create(name:'Sucre',type_place:'municipio',place_id:18)

Place.create(name:'Turén',type_place:'municipio',place_id:18)

Place.create(name:'Andrés Eloy Blanco',type_place:'municipio',place_id:19)

Place.create(name:'Andrés Mata',type_place:'municipio',place_id:19)

Place.create(name:'Arismendi',type_place:'municipio',place_id:19)

Place.create(name:'Benítez',type_place:'municipio',place_id:19)

Place.create(name:'Bermúdez',type_place:'municipio',place_id:19)

Place.create(name:'Bolívar',type_place:'municipio',place_id:19)

Place.create(name:'Cajigal',type_place:'municipio',place_id:19)

Place.create(name:'Cruz Salmerón Acosta',type_place:'municipio',place_id:19)

Place.create(name:'Libertador',type_place:'municipio',place_id:19)

Place.create(name:'Mariño',type_place:'municipio',place_id:19)

Place.create(name:'Mejía',type_place:'municipio',place_id:19)

Place.create(name:'Montes',type_place:'municipio',place_id:19)

Place.create(name:'Ribero',type_place:'municipio',place_id:19)

Place.create(name:'Sucre',type_place:'municipio',place_id:19)

Place.create(name:'Valdéz',type_place:'municipio',place_id:19)

Place.create(name:'Andrés Bello',type_place:'municipio',place_id:20)

Place.create(name:'Antonio Rómulo Costa',type_place:'municipio',place_id:20)

Place.create(name:'Ayacucho',type_place:'municipio',place_id:20)

Place.create(name:'Bolívar',type_place:'municipio',place_id:20)

Place.create(name:'Cárdenas',type_place:'municipio',place_id:20)

Place.create(name:'Córdoba',type_place:'municipio',place_id:20)

Place.create(name:'Fernández Feo',type_place:'municipio',place_id:20)

Place.create(name:'Francisco de Miranda',type_place:'municipio',place_id:20)

Place.create(name:'García de Hevia',type_place:'municipio',place_id:20)

Place.create(name:'Guásimos',type_place:'municipio',place_id:20)

Place.create(name:'Independencia',type_place:'municipio',place_id:20)

Place.create(name:'Jáuregui',type_place:'municipio',place_id:20)

Place.create(name:'José María Vargas',type_place:'municipio',place_id:20)

Place.create(name:'Junín',type_place:'municipio',place_id:20)

Place.create(name:'Libertad',type_place:'municipio',place_id:20)

Place.create(name:'Libertador',type_place:'municipio',place_id:20)

Place.create(name:'Lobatera',type_place:'municipio',place_id:20)

Place.create(name:'Michelena',type_place:'municipio',place_id:20)

Place.create(name:'Panamericano',type_place:'municipio',place_id:20)

Place.create(name:'Pedro María Ureña',type_place:'municipio',place_id:20)

Place.create(name:'Rafael Urdaneta',type_place:'municipio',place_id:20)

Place.create(name:'Samuel Darío Maldonado',type_place:'municipio',place_id:20)

Place.create(name:'San Cristóbal',type_place:'municipio',place_id:20)

Place.create(name:'Seboruco',type_place:'municipio',place_id:20)

Place.create(name:'Simón Rodríguez',type_place:'municipio',place_id:20)

Place.create(name:'Sucre',type_place:'municipio',place_id:20)

Place.create(name:'Torbes',type_place:'municipio',place_id:20)

Place.create(name:'Uribante',type_place:'municipio',place_id:20)

Place.create(name:'San Judas Tadeo',type_place:'municipio',place_id:20)

Place.create(name:'Andrés Bello',type_place:'municipio',place_id:21)

Place.create(name:'Boconó',type_place:'municipio',place_id:21)

Place.create(name:'Bolívar',type_place:'municipio',place_id:21)

Place.create(name:'Candelaria',type_place:'municipio',place_id:21)

Place.create(name:'Carache',type_place:'municipio',place_id:21)

Place.create(name:'Escuque',type_place:'municipio',place_id:21)

Place.create(name:'José Felipe Márquez Cañizalez',type_place:'municipio',place_id:21)

Place.create(name:'Juan Vicente Campos Elías',type_place:'municipio',place_id:21)

Place.create(name:'La Ceiba',type_place:'municipio',place_id:21)

Place.create(name:'Miranda',type_place:'municipio',place_id:21)

Place.create(name:'Monte Carmelo',type_place:'municipio',place_id:21)

Place.create(name:'Motatán',type_place:'municipio',place_id:21)

Place.create(name:'Pampán',type_place:'municipio',place_id:21)

Place.create(name:'Pampanito',type_place:'municipio',place_id:21)

Place.create(name:'Rafael Rangel',type_place:'municipio',place_id:21)

Place.create(name:'San Rafael de Carvajal',type_place:'municipio',place_id:21)

Place.create(name:'Sucre',type_place:'municipio',place_id:21)

Place.create(name:'Trujillo',type_place:'municipio',place_id:21)

Place.create(name:'Urdaneta',type_place:'municipio',place_id:21)

Place.create(name:'Valera',type_place:'municipio',place_id:21)

Place.create(name:'Vargas',type_place:'municipio',place_id:22)

Place.create(name:'Arístides Bastidas',type_place:'municipio',place_id:23)

Place.create(name:'Bolívar',type_place:'municipio',place_id:23)

Place.create(name:'Bruzual',type_place:'municipio',place_id:23)

Place.create(name:'Cocorote',type_place:'municipio',place_id:23)

Place.create(name:'Independencia',type_place:'municipio',place_id:23)

Place.create(name:'José Antonio Páez',type_place:'municipio',place_id:23)

Place.create(name:'La Trinidad',type_place:'municipio',place_id:23)

Place.create(name:'Manuel Monge',type_place:'municipio',place_id:23)

Place.create(name:'Nirgua',type_place:'municipio',place_id:23)

Place.create(name:'Peña',type_place:'municipio',place_id:23)

Place.create(name:'San Felipe',type_place:'municipio',place_id:23)

Place.create(name:'Sucre',type_place:'municipio',place_id:23)

Place.create(name:'Urachiche',type_place:'municipio',place_id:23)

Place.create(name:'José Joaquín Veroes',type_place:'municipio',place_id:23)

Place.create(name:'Almirante Padilla',type_place:'municipio',place_id:24)

Place.create(name:'Baralt',type_place:'municipio',place_id:24)

Place.create(name:'Cabimas',type_place:'municipio',place_id:24)

Place.create(name:'Catatumbo',type_place:'municipio',place_id:24)

Place.create(name:'Colón',type_place:'municipio',place_id:24)

Place.create(name:'Francisco Javier Pulgar',type_place:'municipio',place_id:24)

Place.create(name:'Páez',type_place:'municipio',place_id:24)

Place.create(name:'Jesús Enrique Losada',type_place:'municipio',place_id:24)

Place.create(name:'Jesús María Semprún',type_place:'municipio',place_id:24)

Place.create(name:'La Cañada de Urdaneta',type_place:'municipio',place_id:24)

Place.create(name:'Lagunillas',type_place:'municipio',place_id:24)

Place.create(name:'Machiques de Perijá',type_place:'municipio',place_id:24)

Place.create(name:'Mara',type_place:'municipio',place_id:24)

Place.create(name:'Maracaibo',type_place:'municipio',place_id:24)

Place.create(name:'Miranda',type_place:'municipio',place_id:24)

Place.create(name:'Rosario de Perijá',type_place:'municipio',place_id:24)

Place.create(name:'San Francisco',type_place:'municipio',place_id:24)

Place.create(name:'Santa Rita',type_place:'municipio',place_id:24)

Place.create(name:'Simón Bolívar',type_place:'municipio',place_id:24)

Place.create(name:'Sucre',type_place:'municipio',place_id:24)

Place.create(name:'Valmore Rodríguez',type_place:'municipio',place_id:24)

Place.create(name:'Libertador',type_place:'municipio',place_id:25)

Place.create(name:'Alto Orinoco',type_place:'parroquia',place_id:27)

Place.create(name:'HuachamacareAcanaña',type_place:'parroquia',place_id:27)

Place.create(name:'MarawakaTokyShamanaña',type_place:'parroquia',place_id:27)

Place.create(name:'MavakaMavaka',type_place:'parroquia',place_id:27)

Place.create(name:'Sierra Parima Parimabé',type_place:'parroquia',place_id:27)

Place.create(name:'Ucata Laja Lisa',type_place:'parroquia',place_id:28)

Place.create(name:'YapacanaMacuruco',type_place:'parroquia',place_id:28)

Place.create(name:'CanameGuarinuma',type_place:'parroquia',place_id:28)

Place.create(name:'Fernando Girón Tovar',type_place:'parroquia',place_id:29)

Place.create(name:'Luis Alberto Gómez',type_place:'parroquia',place_id:29)

Place.create(name:'Pahueña Limón de Parhueña',type_place:'parroquia',place_id:29)

Place.create(name:'PlatanillalPlatanillal',type_place:'parroquia',place_id:29)

Place.create(name:'Samariapo',type_place:'parroquia',place_id:30)

Place.create(name:'Sipapo',type_place:'parroquia',place_id:30)

Place.create(name:'Munduapo',type_place:'parroquia',place_id:30)

Place.create(name:'Guayapo',type_place:'parroquia',place_id:30)

Place.create(name:'Alto Ventuari',type_place:'parroquia',place_id:31)

Place.create(name:'Medio Ventuari',type_place:'parroquia',place_id:31)

Place.create(name:'Bajo Ventuari',type_place:'parroquia',place_id:31)

Place.create(name:'Victorino',type_place:'parroquia',place_id:32)

Place.create(name:'Comunidad',type_place:'parroquia',place_id:32)

Place.create(name:'Casiquiare',type_place:'parroquia',place_id:33)

Place.create(name:'Cocuy',type_place:'parroquia',place_id:33)

Place.create(name:'San Carlos de Río Negro',type_place:'parroquia',place_id:33)

Place.create(name:'Solano',type_place:'parroquia',place_id:33)

Place.create(name:'Anaco',type_place:'parroquia',place_id:34)

Place.create(name:'San Joaquín',type_place:'parroquia',place_id:34)

Place.create(name:'Cachipo',type_place:'parroquia',place_id:35)

Place.create(name:'Aragua de Barcelona',type_place:'parroquia',place_id:35)

Place.create(name:'Lechería',type_place:'parroquia',place_id:37)

Place.create(name:'El Morro',type_place:'parroquia',place_id:37)

Place.create(name:'Puerto Píritu',type_place:'parroquia',place_id:38)

Place.create(name:'San Miguel',type_place:'parroquia',place_id:38)

Place.create(name:'Sucre',type_place:'parroquia',place_id:38)

Place.create(name:'Valle de Guanape',type_place:'parroquia',place_id:39)

Place.create(name:'Santa Bárbara',type_place:'parroquia',place_id:39)

Place.create(name:'El Chaparro',type_place:'parroquia',place_id:40)

Place.create(name:'Tomás Alfaro',type_place:'parroquia',place_id:40)

Place.create(name:'Calatrava',type_place:'parroquia',place_id:40)

Place.create(name:'Guanta',type_place:'parroquia',place_id:41)

Place.create(name:'Chorrerón',type_place:'parroquia',place_id:41)

Place.create(name:'Mamo',type_place:'parroquia',place_id:42)

Place.create(name:'Soledad',type_place:'parroquia',place_id:42)

Place.create(name:'Mapire',type_place:'parroquia',place_id:43)

Place.create(name:'Piar',type_place:'parroquia',place_id:43)

Place.create(name:'Santa Clara',type_place:'parroquia',place_id:43)

Place.create(name:'San Diego de Cabrutica',type_place:'parroquia',place_id:43)

Place.create(name:'Uverito',type_place:'parroquia',place_id:43)

Place.create(name:'Zuata',type_place:'parroquia',place_id:43)

Place.create(name:'Puerto La Cruz',type_place:'parroquia',place_id:44)

Place.create(name:'Pozuelos',type_place:'parroquia',place_id:44)

Place.create(name:'Onoto',type_place:'parroquia',place_id:45)

Place.create(name:'San Pablo',type_place:'parroquia',place_id:45)

Place.create(name:'San Mateo',type_place:'parroquia',place_id:46)

Place.create(name:'El Carito',type_place:'parroquia',place_id:46)

Place.create(name:'Santa Inés',type_place:'parroquia',place_id:46)

Place.create(name:'La Romereña',type_place:'parroquia',place_id:46)

Place.create(name:'Atapirire',type_place:'parroquia',place_id:47)

Place.create(name:'Boca del Pao',type_place:'parroquia',place_id:47)

Place.create(name:'El Pao',type_place:'parroquia',place_id:47)

Place.create(name:'Pariaguán',type_place:'parroquia',place_id:47)

Place.create(name:'Cantaura',type_place:'parroquia',place_id:48)

Place.create(name:'Libertador',type_place:'parroquia',place_id:48)

Place.create(name:'Santa Rosa',type_place:'parroquia',place_id:48)

Place.create(name:'Urica',type_place:'parroquia',place_id:48)

Place.create(name:'Píritu',type_place:'parroquia',place_id:49)

Place.create(name:'San Francisco',type_place:'parroquia',place_id:49)

Place.create(name:'San José de Guanipa',type_place:'parroquia',place_id:50)

Place.create(name:'Boca de Uchire',type_place:'parroquia',place_id:51)

Place.create(name:'Boca de Chávez',type_place:'parroquia',place_id:51)

Place.create(name:'Pueblo Nuevo',type_place:'parroquia',place_id:52)

Place.create(name:'Santa Ana',type_place:'parroquia',place_id:52)

Place.create(name:'Bergantín',type_place:'parroquia',place_id:53)

Place.create(name:'Caigua',type_place:'parroquia',place_id:53)

Place.create(name:'El Carmen',type_place:'parroquia',place_id:53)

Place.create(name:'El Pilar',type_place:'parroquia',place_id:53)

Place.create(name:'Naricual',type_place:'parroquia',place_id:53)

Place.create(name:'San Crsitóbal',type_place:'parroquia',place_id:53)

Place.create(name:'Edmundo Barrios',type_place:'parroquia',place_id:54)

Place.create(name:'Miguel Otero Silva',type_place:'parroquia',place_id:54)

Place.create(name:'Achaguas',type_place:'parroquia',place_id:55)

Place.create(name:'Apurito',type_place:'parroquia',place_id:55)

Place.create(name:'El Yagual',type_place:'parroquia',place_id:55)

Place.create(name:'Guachara',type_place:'parroquia',place_id:55)

Place.create(name:'Mucuritas',type_place:'parroquia',place_id:55)

Place.create(name:'Queseras del medio',type_place:'parroquia',place_id:55)

Place.create(name:'Biruaca',type_place:'parroquia',place_id:56)

Place.create(name:'Bruzual',type_place:'parroquia',place_id:57)

Place.create(name:'Mantecal',type_place:'parroquia',place_id:57)

Place.create(name:'Quintero',type_place:'parroquia',place_id:57)

Place.create(name:'Rincón Hondo',type_place:'parroquia',place_id:57)

Place.create(name:'San Vicente',type_place:'parroquia',place_id:57)

Place.create(name:'Guasdualito',type_place:'parroquia',place_id:58)

Place.create(name:'Aramendi',type_place:'parroquia',place_id:58)

Place.create(name:'El Amparo',type_place:'parroquia',place_id:58)

Place.create(name:'San Camilo',type_place:'parroquia',place_id:58)

Place.create(name:'Urdaneta',type_place:'parroquia',place_id:58)

Place.create(name:'San Juan de Payara',type_place:'parroquia',place_id:59)

Place.create(name:'Codazzi',type_place:'parroquia',place_id:59)

Place.create(name:'Cunaviche',type_place:'parroquia',place_id:59)

Place.create(name:'Elorza',type_place:'parroquia',place_id:60)

Place.create(name:'La Trinidad',type_place:'parroquia',place_id:60)

Place.create(name:'San Fernando',type_place:'parroquia',place_id:61)

Place.create(name:'El Recreo',type_place:'parroquia',place_id:61)

Place.create(name:'Peñalver',type_place:'parroquia',place_id:61)

Place.create(name:'San Rafael de Atamaica',type_place:'parroquia',place_id:61)

Place.create(name:'Pedro José Ovalles',type_place:'parroquia',place_id:62)

Place.create(name:'Joaquín Crespo',type_place:'parroquia',place_id:62)

Place.create(name:'José Casanova Godoy',type_place:'parroquia',place_id:62)

Place.create(name:'Madre María de San José',type_place:'parroquia',place_id:62)

Place.create(name:'Andrés Eloy Blanco',type_place:'parroquia',place_id:62)

Place.create(name:'Los Tacarigua',type_place:'parroquia',place_id:62)

Place.create(name:'Las Delicias',type_place:'parroquia',place_id:62)

Place.create(name:'Choroní',type_place:'parroquia',place_id:62)

Place.create(name:'Bolívar',type_place:'parroquia',place_id:63)

Place.create(name:'Camatagua',type_place:'parroquia',place_id:64)

Place.create(name:'Carmen de Cura',type_place:'parroquia',place_id:64)

Place.create(name:'Santa Rita',type_place:'parroquia',place_id:65)

Place.create(name:'Francisco de Miranda',type_place:'parroquia',place_id:65)

Place.create(name:'Moseñor Feliciano González',type_place:'parroquia',place_id:65)

Place.create(name:'Santa Cruz',type_place:'parroquia',place_id:66)

Place.create(name:'José Félix Ribas',type_place:'parroquia',place_id:67)

Place.create(name:'Castor Nieves Ríos',type_place:'parroquia',place_id:67)

Place.create(name:'Las Guacamayas',type_place:'parroquia',place_id:67)

Place.create(name:'Pao de Zárate',type_place:'parroquia',place_id:67)

Place.create(name:'Zuata',type_place:'parroquia',place_id:67)

Place.create(name:'José Rafael Revenga',type_place:'parroquia',place_id:68)

Place.create(name:'Palo Negro',type_place:'parroquia',place_id:69)

Place.create(name:'San Martín de Porres',type_place:'parroquia',place_id:69)

Place.create(name:'El Limón',type_place:'parroquia',place_id:70)

Place.create(name:'Caña de Azúcar',type_place:'parroquia',place_id:70)

Place.create(name:'Ocumare de la Costa',type_place:'parroquia',place_id:71)

Place.create(name:'San Casimiro',type_place:'parroquia',place_id:72)

Place.create(name:'Güiripa',type_place:'parroquia',place_id:72)

Place.create(name:'Ollas de Caramacate',type_place:'parroquia',place_id:72)

Place.create(name:'Valle Morín',type_place:'parroquia',place_id:72)

Place.create(name:'San Sebastían',type_place:'parroquia',place_id:73)

Place.create(name:'Turmero',type_place:'parroquia',place_id:74)

Place.create(name:'Arevalo Aponte',type_place:'parroquia',place_id:74)

Place.create(name:'Chuao',type_place:'parroquia',place_id:74)

Place.create(name:'Samán de Güere',type_place:'parroquia',place_id:74)

Place.create(name:'Alfredo Pacheco Miranda',type_place:'parroquia',place_id:74)

Place.create(name:'Santos Michelena',type_place:'parroquia',place_id:75)

Place.create(name:'Tiara',type_place:'parroquia',place_id:75)

Place.create(name:'Cagua',type_place:'parroquia',place_id:76)

Place.create(name:'Bella Vista',type_place:'parroquia',place_id:76)

Place.create(name:'Tovar',type_place:'parroquia',place_id:77)

Place.create(name:'Urdaneta',type_place:'parroquia',place_id:78)

Place.create(name:'Las Peñitas',type_place:'parroquia',place_id:78)

Place.create(name:'San Francisco de Cara',type_place:'parroquia',place_id:78)

Place.create(name:'Taguay',type_place:'parroquia',place_id:78)

Place.create(name:'Zamora',type_place:'parroquia',place_id:79)

Place.create(name:'Magdaleno',type_place:'parroquia',place_id:79)

Place.create(name:'San Francisco de Asís',type_place:'parroquia',place_id:79)

Place.create(name:'Valles de Tucutunemo',type_place:'parroquia',place_id:79)

Place.create(name:'Augusto Mijares',type_place:'parroquia',place_id:79)

Place.create(name:'Sabaneta',type_place:'parroquia',place_id:80)

Place.create(name:'Juan Antonio Rodríguez Domínguez',type_place:'parroquia',place_id:80)

Place.create(name:'El Cantón',type_place:'parroquia',place_id:81)

Place.create(name:'Santa Cruz de Guacas',type_place:'parroquia',place_id:81)

Place.create(name:'Puerto Vivas',type_place:'parroquia',place_id:81)

Place.create(name:'Ticoporo',type_place:'parroquia',place_id:82)

Place.create(name:'Nicolás Pulido',type_place:'parroquia',place_id:82)

Place.create(name:'Andrés Bello',type_place:'parroquia',place_id:82)

Place.create(name:'Arismendi',type_place:'parroquia',place_id:83)

Place.create(name:'Guadarrama',type_place:'parroquia',place_id:83)

Place.create(name:'La Unión',type_place:'parroquia',place_id:83)

Place.create(name:'San Antonio',type_place:'parroquia',place_id:83)

Place.create(name:'Barinas',type_place:'parroquia',place_id:84)

Place.create(name:'Alberto Arvelo Larriva',type_place:'parroquia',place_id:84)

Place.create(name:'San Silvestre',type_place:'parroquia',place_id:84)

Place.create(name:'Santa Inés',type_place:'parroquia',place_id:84)

Place.create(name:'Santa Lucía',type_place:'parroquia',place_id:84)

Place.create(name:'Torumos',type_place:'parroquia',place_id:84)

Place.create(name:'El Carmen',type_place:'parroquia',place_id:84)

Place.create(name:'Rómulo Betancourt',type_place:'parroquia',place_id:84)

Place.create(name:'Corazón de Jesús',type_place:'parroquia',place_id:84)

Place.create(name:'Ramón Ignacio Méndez',type_place:'parroquia',place_id:84)

Place.create(name:'Alto Barinas',type_place:'parroquia',place_id:84)

Place.create(name:'Manuel Palacio Fajardo',type_place:'parroquia',place_id:84)

Place.create(name:'Juan Antonio Rodríguez Domínguez',type_place:'parroquia',place_id:84)

Place.create(name:'Dominga Ortiz de Páez',type_place:'parroquia',place_id:84)

Place.create(name:'Barinitas',type_place:'parroquia',place_id:85)

Place.create(name:'Altamira de Cáceres',type_place:'parroquia',place_id:85)

Place.create(name:'Calderas',type_place:'parroquia',place_id:85)

Place.create(name:'Barrancas',type_place:'parroquia',place_id:86)

Place.create(name:'El Socorro',type_place:'parroquia',place_id:86)

Place.create(name:'Mazparrito',type_place:'parroquia',place_id:86)

Place.create(name:'Santa Bárbara',type_place:'parroquia',place_id:86)

Place.create(name:'Pedro Briceño Méndez',type_place:'parroquia',place_id:87)

Place.create(name:'Ramón Ignacio Méndez',type_place:'parroquia',place_id:87)

Place.create(name:'José Ignacio del Pumar',type_place:'parroquia',place_id:87)

Place.create(name:'Obispos',type_place:'parroquia',place_id:88)

Place.create(name:'Guasimitos',type_place:'parroquia',place_id:88)

Place.create(name:'El Real',type_place:'parroquia',place_id:88)

Place.create(name:'La Luz',type_place:'parroquia',place_id:88)

Place.create(name:'Ciudad Bolívia',type_place:'parroquia',place_id:89)

Place.create(name:'José Ignacio Briceño',type_place:'parroquia',place_id:89)

Place.create(name:'José Félix Ribas',type_place:'parroquia',place_id:89)

Place.create(name:'Páez',type_place:'parroquia',place_id:89)

Place.create(name:'Libertad',type_place:'parroquia',place_id:90)

Place.create(name:'Dolores',type_place:'parroquia',place_id:90)

Place.create(name:'Santa Rosa',type_place:'parroquia',place_id:90)

Place.create(name:'Palacio Fajardo',type_place:'parroquia',place_id:90)

Place.create(name:'Ciudad de Nutrias',type_place:'parroquia',place_id:91)

Place.create(name:'El Regalo',type_place:'parroquia',place_id:91)

Place.create(name:'Puerto Nutrias',type_place:'parroquia',place_id:91)

Place.create(name:'Santa Catalina',type_place:'parroquia',place_id:91)

Place.create(name:'Cachamay',type_place:'parroquia',place_id:92)

Place.create(name:'Chirica',type_place:'parroquia',place_id:92)

Place.create(name:'Dalla Costa',type_place:'parroquia',place_id:92)

Place.create(name:'Once de Abril',type_place:'parroquia',place_id:92)

Place.create(name:'Simón Bolívar',type_place:'parroquia',place_id:92)

Place.create(name:'Unare',type_place:'parroquia',place_id:92)

Place.create(name:'Universidad',type_place:'parroquia',place_id:92)

Place.create(name:'Vista al Sol',type_place:'parroquia',place_id:92)

Place.create(name:'Pozo Verde',type_place:'parroquia',place_id:92)

Place.create(name:'Yocoima',type_place:'parroquia',place_id:92)

Place.create(name:'5 de Julio',type_place:'parroquia',place_id:92)

Place.create(name:'Cedeño',type_place:'parroquia',place_id:93)

Place.create(name:'Altagracia',type_place:'parroquia',place_id:93)

Place.create(name:'Ascensión Farreras',type_place:'parroquia',place_id:93)

Place.create(name:'Guaniamo',type_place:'parroquia',place_id:93)

Place.create(name:'La Urbana',type_place:'parroquia',place_id:93)

Place.create(name:'Pijiguaos',type_place:'parroquia',place_id:93)

Place.create(name:'El Callao',type_place:'parroquia',place_id:94)

Place.create(name:'Gran Sabana',type_place:'parroquia',place_id:95)

Place.create(name:'Ikabarú',type_place:'parroquia',place_id:95)

Place.create(name:'Catedral',type_place:'parroquia',place_id:96)

Place.create(name:'Zea',type_place:'parroquia',place_id:96)

Place.create(name:'Orinoco',type_place:'parroquia',place_id:96)

Place.create(name:'José Antonio Páez',type_place:'parroquia',place_id:96)

Place.create(name:'Marhuanta',type_place:'parroquia',place_id:96)

Place.create(name:'Agua Salada',type_place:'parroquia',place_id:96)

Place.create(name:'Vista Hermosa',type_place:'parroquia',place_id:96)

Place.create(name:'La Sabanita',type_place:'parroquia',place_id:96)

Place.create(name:'Panapana',type_place:'parroquia',place_id:96)

Place.create(name:'Andrés Eloy Blanco',type_place:'parroquia',place_id:97)

Place.create(name:'Pedro Cova',type_place:'parroquia',place_id:97)

Place.create(name:'Raúl Leoni',type_place:'parroquia',place_id:98)

Place.create(name:'Barceloneta',type_place:'parroquia',place_id:98)

Place.create(name:'Santa Bárbara',type_place:'parroquia',place_id:98)

Place.create(name:'San Francisco',type_place:'parroquia',place_id:98)

Place.create(name:'Roscio',type_place:'parroquia',place_id:99)

Place.create(name:'Salóm',type_place:'parroquia',place_id:99)

Place.create(name:'Sifontes',type_place:'parroquia',place_id:100)

Place.create(name:'Dalla Costa',type_place:'parroquia',place_id:100)

Place.create(name:'San Isidro',type_place:'parroquia',place_id:100)

Place.create(name:'Sucre',type_place:'parroquia',place_id:101)

Place.create(name:'Aripao',type_place:'parroquia',place_id:101)

Place.create(name:'Guarataro',type_place:'parroquia',place_id:101)

Place.create(name:'Las Majadas',type_place:'parroquia',place_id:101)

Place.create(name:'Moitaco',type_place:'parroquia',place_id:101)

Place.create(name:'Padre Pedro Chien',type_place:'parroquia',place_id:102)

Place.create(name:'Río Grande',type_place:'parroquia',place_id:102)

Place.create(name:'Bejuma',type_place:'parroquia',place_id:103)

Place.create(name:'Canoabo',type_place:'parroquia',place_id:103)

Place.create(name:'Simón Bolívar',type_place:'parroquia',place_id:103)

Place.create(name:'Güigüe',type_place:'parroquia',place_id:104)

Place.create(name:'Carabobo',type_place:'parroquia',place_id:104)

Place.create(name:'Tacarigua',type_place:'parroquia',place_id:104)

Place.create(name:'Mariara',type_place:'parroquia',place_id:105)

Place.create(name:'Aguas Calientes',type_place:'parroquia',place_id:105)

Place.create(name:'Ciudad Alianza',type_place:'parroquia',place_id:106)

Place.create(name:'Guacara',type_place:'parroquia',place_id:106)

Place.create(name:'Yagua',type_place:'parroquia',place_id:106)

Place.create(name:'Morón',type_place:'parroquia',place_id:107)

Place.create(name:'Yagua',type_place:'parroquia',place_id:107)

Place.create(name:'Tocuyito',type_place:'parroquia',place_id:108)

Place.create(name:'Independencia',type_place:'parroquia',place_id:108)

Place.create(name:'Los Guayos',type_place:'parroquia',place_id:109)

Place.create(name:'Miranda',type_place:'parroquia',place_id:110)

Place.create(name:'Montalbán',type_place:'parroquia',place_id:111)

Place.create(name:'Naguanagua',type_place:'parroquia',place_id:112)

Place.create(name:'Bartolomé Salóm',type_place:'parroquia',place_id:113)

Place.create(name:'Democracia',type_place:'parroquia',place_id:113)

Place.create(name:'Fraternidad',type_place:'parroquia',place_id:113)

Place.create(name:'Goaigoaza',type_place:'parroquia',place_id:113)

Place.create(name:'Juan José Flores',type_place:'parroquia',place_id:113)

Place.create(name:'Unión',type_place:'parroquia',place_id:113)

Place.create(name:'Borburata',type_place:'parroquia',place_id:113)

Place.create(name:'Patanemo',type_place:'parroquia',place_id:113)

Place.create(name:'San Diego',type_place:'parroquia',place_id:114)

Place.create(name:'San Joaquín',type_place:'parroquia',place_id:115)

Place.create(name:'Candelaria',type_place:'parroquia',place_id:116)

Place.create(name:'Catedral',type_place:'parroquia',place_id:116)

Place.create(name:'El Socorro',type_place:'parroquia',place_id:116)

Place.create(name:'Miguel Peña',type_place:'parroquia',place_id:116)

Place.create(name:'Rafael Urdaneta',type_place:'parroquia',place_id:116)

Place.create(name:'San Blas',type_place:'parroquia',place_id:116)

Place.create(name:'San José',type_place:'parroquia',place_id:116)

Place.create(name:'Santa Rosa',type_place:'parroquia',place_id:116)

Place.create(name:'Negro Primero',type_place:'parroquia',place_id:116)

Place.create(name:'Cojedes',type_place:'parroquia',place_id:117)

Place.create(name:'Juan de Mata Suárez',type_place:'parroquia',place_id:117)

Place.create(name:'Tinaquillo',type_place:'parroquia',place_id:118)

Place.create(name:'El Baúl',type_place:'parroquia',place_id:119)

Place.create(name:'Sucre',type_place:'parroquia',place_id:119)

Place.create(name:'La Aguadita',type_place:'parroquia',place_id:120)

Place.create(name:'Macapo',type_place:'parroquia',place_id:120)

Place.create(name:'El Pao',type_place:'parroquia',place_id:121)

Place.create(name:'El Amparo',type_place:'parroquia',place_id:122)

Place.create(name:'Libertad de Cojedes',type_place:'parroquia',place_id:122)

Place.create(name:'Rómulo Gallegos',type_place:'parroquia',place_id:123)

Place.create(name:'San Carlos de Austria',type_place:'parroquia',place_id:124)

Place.create(name:'Juan Ángel Bravo',type_place:'parroquia',place_id:124)

Place.create(name:'Manuel Manrique',type_place:'parroquia',place_id:124)

Place.create(name:'General en Jefe José Laurencio Silva',type_place:'parroquia',place_id:125)

Place.create(name:'Curiapo',type_place:'parroquia',place_id:126)

Place.create(name:'Almirante Luis Brión',type_place:'parroquia',place_id:126)

Place.create(name:'Francisco Aniceto Lugo',type_place:'parroquia',place_id:126)

Place.create(name:'Manuel Renaud',type_place:'parroquia',place_id:126)

Place.create(name:'Padre Barral',type_place:'parroquia',place_id:126)

Place.create(name:'Santos de Abelgas',type_place:'parroquia',place_id:126)

Place.create(name:'Imataca',type_place:'parroquia',place_id:127)

Place.create(name:'Cinco de Julio',type_place:'parroquia',place_id:127)

Place.create(name:'Juan Bautista Arismendi',type_place:'parroquia',place_id:127)

Place.create(name:'Manuel Piar',type_place:'parroquia',place_id:127)

Place.create(name:'Rómulo Gallegos',type_place:'parroquia',place_id:127)

Place.create(name:'Pedernales',type_place:'parroquia',place_id:128)

Place.create(name:'Luis Beltrán Prieto Figueroa',type_place:'parroquia',place_id:128)

Place.create(name:'San José (Delta Amacuro)',type_place:'parroquia',place_id:129)

Place.create(name:'José Vidal Marcano',type_place:'parroquia',place_id:129)

Place.create(name:'Juan Millán',type_place:'parroquia',place_id:129)

Place.create(name:'Leonardo Ruíz Pineda',type_place:'parroquia',place_id:129)

Place.create(name:'Mariscal Antonio José de Sucre',type_place:'parroquia',place_id:129)

Place.create(name:'Monseñor Argimiro García',type_place:'parroquia',place_id:129)

Place.create(name:'San Rafael (Delta Amacuro)',type_place:'parroquia',place_id:129)

Place.create(name:'Virgen del Valle',type_place:'parroquia',place_id:129)

Place.create(name:'Clarines',type_place:'parroquia',place_id:36)

Place.create(name:'Guanape',type_place:'parroquia',place_id:36)

Place.create(name:'Sabana de Uchire',type_place:'parroquia',place_id:36)

Place.create(name:'Capadare',type_place:'parroquia',place_id:130)

Place.create(name:'La Pastora',type_place:'parroquia',place_id:130)

Place.create(name:'Libertador',type_place:'parroquia',place_id:130)

Place.create(name:'San Juan de los Cayos',type_place:'parroquia',place_id:130)

Place.create(name:'Aracua',type_place:'parroquia',place_id:131)


Place.create(name:'La Peña',type_place:'parroquia',place_id:131)

Place.create(name:'San Luis',type_place:'parroquia',place_id:131)

Place.create(name:'Bariro',type_place:'parroquia',place_id:132)

Place.create(name:'Borojó',type_place:'parroquia',place_id:132)

Place.create(name:'Capatárida',type_place:'parroquia',place_id:132)

Place.create(name:'Guajiro',type_place:'parroquia',place_id:132)

Place.create(name:'Seque',type_place:'parroquia',place_id:132)

Place.create(name:'Zazárida',type_place:'parroquia',place_id:132)

Place.create(name:'Valle de Eroa',type_place:'parroquia',place_id:132)

Place.create(name:'Cacique Manaure',type_place:'parroquia',place_id:133)

Place.create(name:'Norte',type_place:'parroquia',place_id:134)

Place.create(name:'Carirubana',type_place:'parroquia',place_id:134)

Place.create(name:'Santa Ana',type_place:'parroquia',place_id:134)

Place.create(name:'Urbana Punta Cardón',type_place:'parroquia',place_id:134)

Place.create(name:'La Vela de Coro',type_place:'parroquia',place_id:135)

Place.create(name:'Acurigua',type_place:'parroquia',place_id:135)

Place.create(name:'Guaibacoa',type_place:'parroquia',place_id:135)

Place.create(name:'Las Calderas',type_place:'parroquia',place_id:135)

Place.create(name:'Macoruca',type_place:'parroquia',place_id:135)

Place.create(name:'Dabajuro',type_place:'parroquia',place_id:136)

Place.create(name:'Agua Clara',type_place:'parroquia',place_id:137)

Place.create(name:'Avaria',type_place:'parroquia',place_id:137)

Place.create(name:'Pedregal',type_place:'parroquia',place_id:137)

Place.create(name:'Piedra Grande',type_place:'parroquia',place_id:137)

Place.create(name:'Purureche',type_place:'parroquia',place_id:137)

Place.create(name:'Adaure',type_place:'parroquia',place_id:138)

Place.create(name:'Adícora',type_place:'parroquia',place_id:138)

Place.create(name:'Baraived',type_place:'parroquia',place_id:138)

Place.create(name:'Buena Vista',type_place:'parroquia',place_id:138)

Place.create(name:'Jadacaquiva',type_place:'parroquia',place_id:138)

Place.create(name:'El Vínculo',type_place:'parroquia',place_id:138)

Place.create(name:'El Hato',type_place:'parroquia',place_id:138)

Place.create(name:'Moruy',type_place:'parroquia',place_id:138)

Place.create(name:'Pueblo Nuevo',type_place:'parroquia',place_id:138)

Place.create(name:'Agua Larga',type_place:'parroquia',place_id:139)

Place.create(name:'El Paují',type_place:'parroquia',place_id:139)

Place.create(name:'Independencia',type_place:'parroquia',place_id:13)

Place.create(name:'Mapararí',type_place:'parroquia',place_id:139)

Place.create(name:'Agua Linda',type_place:'parroquia',place_id:140)

Place.create(name:'Araurima',type_place:'parroquia',place_id:140)

Place.create(name:'Jacura',type_place:'parroquia',place_id:140)

Place.create(name:'Tucacas',type_place:'parroquia',place_id:141)

Place.create(name:'Boca de Aroa',type_place:'parroquia',place_id:141)

Place.create(name:'Los Taques',type_place:'parroquia',place_id:142)

Place.create(name:'Judibana',type_place:'parroquia',place_id:142)

Place.create(name:'Mene de Mauroa',type_place:'parroquia',place_id:143)

Place.create(name:'San Félix',type_place:'parroquia',place_id:143)

Place.create(name:'Casigua',type_place:'parroquia',place_id:143)

Place.create(name:'Guzmán Guillermo',type_place:'parroquia',place_id:144)

Place.create(name:'Mitare',type_place:'parroquia',place_id:144)

Place.create(name:'Río Seco',type_place:'parroquia',place_id:144)

Place.create(name:'Sabaneta',type_place:'parroquia',place_id:144)

Place.create(name:'San Antonio',type_place:'parroquia',place_id:144)

Place.create(name:'San Gabriel',type_place:'parroquia',place_id:144)

Place.create(name:'Santa Ana',type_place:'parroquia',place_id:144)

Place.create(name:'Boca del Tocuyo',type_place:'parroquia',place_id:145)

Place.create(name:'Chichiriviche',type_place:'parroquia',place_id:145)

Place.create(name:'Tocuyo de la Costa',type_place:'parroquia',place_id:145)

Place.create(name:'Palmasola',type_place:'parroquia',place_id:146)

Place.create(name:'Cabure',type_place:'parroquia',place_id:147)

Place.create(name:'Colina',type_place:'parroquia',place_id:147)

Place.create(name:'Curimagua',type_place:'parroquia',place_id:147)

Place.create(name:'San José de la Costa',type_place:'parroquia',place_id:148)

Place.create(name:'Píritu',type_place:'parroquia',place_id:148)

Place.create(name:'San Francisco',type_place:'parroquia',place_id:149)

Place.create(name:'Sucre',type_place:'parroquia',place_id:150)

Place.create(name:'Pecaya',type_place:'parroquia',place_id:150)

Place.create(name:'Tocópero',type_place:'parroquia',place_id:151)

Place.create(name:'El Charal',type_place:'parroquia',place_id:152)

Place.create(name:'Las Vegas del Tuy',type_place:'parroquia',place_id:152)

Place.create(name:'Santa Cruz de Bucaral',type_place:'parroquia',place_id:152)

Place.create(name:'Bruzual',type_place:'parroquia',place_id:153)

Place.create(name:'Urumaco',type_place:'parroquia',place_id:153)

Place.create(name:'Puerto Cumarebo',type_place:'parroquia',place_id:154)

Place.create(name:'La Ciénaga',type_place:'parroquia',place_id:154)

Place.create(name:'La Soledad',type_place:'parroquia',place_id:154)

Place.create(name:'Pueblo Cumarebo',type_place:'parroquia',place_id:154)

Place.create(name:'Zazárida',type_place:'parroquia',place_id:154)

Place.create(name:'Churuguara',type_place:'parroquia',place_id:139)

Place.create(name:'Camaguán',type_place:'parroquia',place_id:155)

Place.create(name:'Puerto Miranda',type_place:'parroquia',place_id:155)

Place.create(name:'Uverito',type_place:'parroquia',place_id:155)

Place.create(name:'Chaguaramas',type_place:'parroquia',place_id:156)

Place.create(name:'El Socorro',type_place:'parroquia',place_id:157)

Place.create(name:'Tucupido',type_place:'parroquia',place_id:158)

Place.create(name:'San Rafael de Laya',type_place:'parroquia',place_id:158)

Place.create(name:'Altagracia de Orituco',type_place:'parroquia',place_id:159)

Place.create(name:'San Rafael de Orituco',type_place:'parroquia',place_id:159)

Place.create(name:'San Francisco Javier de Lezama',type_place:'parroquia',place_id:159)

Place.create(name:'Paso Real de Macaira',type_place:'parroquia',place_id:159)

Place.create(name:'Carlos Soublette',type_place:'parroquia',place_id:159)

Place.create(name:'San Francisco de Macaira',type_place:'parroquia',place_id:159)

Place.create(name:'Libertad de Orituco',type_place:'parroquia',place_id:159)

Place.create(name:'Cantaclaro',type_place:'parroquia',place_id:160)

Place.create(name:'San Juan de los Morros',type_place:'parroquia',place_id:160)

Place.create(name:'Parapara',type_place:'parroquia',place_id:160)

Place.create(name:'El Sombrero',type_place:'parroquia',place_id:161)

Place.create(name:'Sosa',type_place:'parroquia',place_id:161)

Place.create(name:'Las Mercedes',type_place:'parroquia',place_id:162)

Place.create(name:'Cabruta',type_place:'parroquia',place_id:162)

Place.create(name:'Santa Rita de Manapire',type_place:'parroquia',place_id:162)

Place.create(name:'Valle de la Pascua',type_place:'parroquia',place_id:163)

Place.create(name:'Espino',type_place:'parroquia',place_id:163)

Place.create(name:'San José de Unare',type_place:'parroquia',place_id:164)

Place.create(name:'Zaraza',type_place:'parroquia',place_id:164)

Place.create(name:'San José de Tiznados',type_place:'parroquia',place_id:165)

Place.create(name:'San Francisco de Tiznados',type_place:'parroquia',place_id:165)

Place.create(name:'San Lorenzo de Tiznados',type_place:'parroquia',place_id:165)

Place.create(name:'Ortiz',type_place:'parroquia',place_id:165)

Place.create(name:'Guayabal',type_place:'parroquia',place_id:166)

Place.create(name:'Cazorla',type_place:'parroquia',place_id:166)

Place.create(name:'San José de Guaribe',type_place:'parroquia',place_id:167)

Place.create(name:'Uveral',type_place:'parroquia',place_id:167)

Place.create(name:'Santa María de Ipire',type_place:'parroquia',place_id:168)

Place.create(name:'Altamira',type_place:'parroquia',place_id:168)

Place.create(name:'El Calvario',type_place:'parroquia',place_id:169)

Place.create(name:'El Rastro',type_place:'parroquia',place_id:169)

Place.create(name:'Guardatinajas',type_place:'parroquia',place_id:169)

Place.create(name:'Capital Urbana Calabozo',type_place:'parroquia',place_id:169)

Place.create(name:'Quebrada Honda de Guache',type_place:'parroquia',place_id:170)

Place.create(name:'Pío Tamayo',type_place:'parroquia',place_id:170)

Place.create(name:'Yacambú',type_place:'parroquia',place_id:170)

Place.create(name:'Fréitez',type_place:'parroquia',place_id:171)

Place.create(name:'José María Blanco',type_place:'parroquia',place_id:171)

Place.create(name:'Catedral',type_place:'parroquia',place_id:172)

Place.create(name:'Concepción',type_place:'parroquia',place_id:172)

Place.create(name:'El Cují',type_place:'parroquia',place_id:172)

Place.create(name:'Juan de Villegas',type_place:'parroquia',place_id:172)

Place.create(name:'Santa Rosa',type_place:'parroquia',place_id:172)

Place.create(name:'Tamaca',type_place:'parroquia',place_id:172)

Place.create(name:'Unión',type_place:'parroquia',place_id:172)

Place.create(name:'Aguedo Felipe Alvarado',type_place:'parroquia',place_id:172)

Place.create(name:'Buena Vista',type_place:'parroquia',place_id:172)

Place.create(name:'Juárez',type_place:'parroquia',place_id:172)

Place.create(name:'Juan Bautista Rodríguez',type_place:'parroquia',place_id:173)

Place.create(name:'Cuara',type_place:'parroquia',place_id:173)

Place.create(name:'Diego de Lozada',type_place:'parroquia',place_id:173)

Place.create(name:'Paraíso de San José',type_place:'parroquia',place_id:173)

Place.create(name:'San Miguel',type_place:'parroquia',place_id:173)

Place.create(name:'Tintorero',type_place:'parroquia',place_id:173)

Place.create(name:'José Bernardo Dorante',type_place:'parroquia',place_id:173)

Place.create(name:'Coronel Mariano Peraza',type_place:'parroquia',place_id:173)

Place.create(name:'Bolívar',type_place:'parroquia',place_id:174)

Place.create(name:'Anzoátegui',type_place:'parroquia',place_id:174)

Place.create(name:'Guarico',type_place:'parroquia',place_id:174)

Place.create(name:'Hilario Luna y Luna',type_place:'parroquia',place_id:174)

Place.create(name:'Humocaro Alto',type_place:'parroquia',place_id:174)

Place.create(name:'Humocaro Bajo',type_place:'parroquia',place_id:174)

Place.create(name:'La Candelaria',type_place:'parroquia',place_id:174)

Place.create(name:'Morán',type_place:'parroquia',place_id:174)

Place.create(name:'Cabudare',type_place:'parroquia',place_id:175)

Place.create(name:'José Gregorio Bastidas',type_place:'parroquia',place_id:175)

Place.create(name:'Agua Viva',type_place:'parroquia',place_id:175)

Place.create(name:'Sarare',type_place:'parroquia',place_id:176)

Place.create(name:'Buría',type_place:'parroquia',place_id:176)

Place.create(name:'Gustavo Vegas León',type_place:'parroquia',place_id:176)

Place.create(name:'Trinidad Samuel',type_place:'parroquia',place_id:177)

Place.create(name:'Antonio Díaz',type_place:'parroquia',place_id:177)

Place.create(name:'Camacaro',type_place:'parroquia',place_id:177)

Place.create(name:'Castañeda',type_place:'parroquia',place_id:177)

Place.create(name:'Cecilio Zubillaga',type_place:'parroquia',place_id:177)

Place.create(name:'Chiquinquirá',type_place:'parroquia',place_id:177)

Place.create(name:'El Blanco',type_place:'parroquia',place_id:177)

Place.create(name:'Espinoza de los Monteros',type_place:'parroquia',place_id:177)

Place.create(name:'Lara',type_place:'parroquia',place_id:177)

Place.create(name:'Las Mercedes',type_place:'parroquia',place_id:177)

Place.create(name:'Manuel Morillo',type_place:'parroquia',place_id:177)

Place.create(name:'Montaña Verde',type_place:'parroquia',place_id:177)

Place.create(name:'Montes de Oca',type_place:'parroquia',place_id:177)

Place.create(name:'Torres',type_place:'parroquia',place_id:177)

Place.create(name:'Heriberto Arroyo',type_place:'parroquia',place_id:177)

Place.create(name:'Reyes Vargas',type_place:'parroquia',place_id:177)

Place.create(name:'Altagracia',type_place:'parroquia',place_id:177)

Place.create(name:'Siquisique',type_place:'parroquia',place_id:178)

Place.create(name:'Moroturo',type_place:'parroquia',place_id:178)

Place.create(name:'San Miguel',type_place:'parroquia',place_id:178)

Place.create(name:'Xaguas',type_place:'parroquia',place_id:178)

Place.create(name:'Presidente Betancourt',type_place:'parroquia',place_id:179)

Place.create(name:'Presidente Páez',type_place:'parroquia',place_id:179)

Place.create(name:'Presidente Rómulo Gallegos',type_place:'parroquia',place_id:179)

Place.create(name:'Gabriel Picón González',type_place:'parroquia',place_id:179)

Place.create(name:'Héctor Amable Mora',type_place:'parroquia',place_id:179)

Place.create(name:'José NuceteSardi',type_place:'parroquia',place_id:179)

Place.create(name:'Pulido Méndez',type_place:'parroquia',place_id:179)

Place.create(name:'La Azulita',type_place:'parroquia',place_id:180)

Place.create(name:'Santa Cruz de Mora',type_place:'parroquia',place_id:181)

Place.create(name:'Mesa Bolívar',type_place:'parroquia',place_id:181)

Place.create(name:'Mesa de Las Palmas',type_place:'parroquia',place_id:181)

Place.create(name:'Aricagua',type_place:'parroquia',place_id:182)

Place.create(name:'San Antonio',type_place:'parroquia',place_id:182)

Place.create(name:'Canagua',type_place:'parroquia',place_id:183)

Place.create(name:'Capurí',type_place:'parroquia',place_id:183)

Place.create(name:'Chacantá',type_place:'parroquia',place_id:183)

Place.create(name:'El Molino',type_place:'parroquia',place_id:183)

Place.create(name:'Guaimaral',type_place:'parroquia',place_id:183)

Place.create(name:'Mucutuy',type_place:'parroquia',place_id:183)

Place.create(name:'Mucuchachí',type_place:'parroquia',place_id:183)

Place.create(name:'Fernández Peña',type_place:'parroquia',place_id:184)

Place.create(name:'Matriz',type_place:'parroquia',place_id:184)

Place.create(name:'Montalbán',type_place:'parroquia',place_id:184)

Place.create(name:'Acequias',type_place:'parroquia',place_id:184)

Place.create(name:'Jají',type_place:'parroquia',place_id:184)

Place.create(name:'La Mesa',type_place:'parroquia',place_id:184)

Place.create(name:'San José del Sur',type_place:'parroquia',place_id:184)

Place.create(name:'Tucaní',type_place:'parroquia',place_id:185)

Place.create(name:'Florencio Ramírez',type_place:'parroquia',place_id:185)

Place.create(name:'Santo Domingo',type_place:'parroquia',place_id:186)

Place.create(name:'Las Piedras',type_place:'parroquia',place_id:186)

Place.create(name:'Guaraque',type_place:'parroquia',place_id:187)

Place.create(name:'Mesa de Quintero',type_place:'parroquia',place_id:187)

Place.create(name:'Río Negro',type_place:'parroquia',place_id:187)

Place.create(name:'Arapuey',type_place:'parroquia',place_id:188)

Place.create(name:'Palmira',type_place:'parroquia',place_id:188)

Place.create(name:'San Cristóbal de Torondoy',type_place:'parroquia',place_id:189)

Place.create(name:'Torondoy',type_place:'parroquia',place_id:189)

Place.create(name:'Antonio Spinetti Dini',type_place:'parroquia',place_id:190)

Place.create(name:'Arias',type_place:'parroquia',place_id:190)

Place.create(name:'Caracciolo Parra Pérez',type_place:'parroquia',place_id:190)

Place.create(name:'Domingo Peña',type_place:'parroquia',place_id:190)

Place.create(name:'El Llano',type_place:'parroquia',place_id:190)

Place.create(name:'Gonzalo Picón Febres',type_place:'parroquia',place_id:190)

Place.create(name:'Jacinto Plaza',type_place:'parroquia',place_id:190)

Place.create(name:'Juan Rodríguez Suárez',type_place:'parroquia',place_id:190)

Place.create(name:'Lasso de la Vega',type_place:'parroquia',place_id:190)

Place.create(name:'Mariano Picón Salas',type_place:'parroquia',place_id:190)

Place.create(name:'Milla',type_place:'parroquia',place_id:190)

Place.create(name:'Osuna Rodríguez',type_place:'parroquia',place_id:190)

Place.create(name:'Sagrario',type_place:'parroquia',place_id:190)

Place.create(name:'El Morro',type_place:'parroquia',place_id:190)

Place.create(name:'Los Nevados',type_place:'parroquia',place_id:190)

Place.create(name:'Andrés Eloy Blanco',type_place:'parroquia',place_id:191)

Place.create(name:'La Venta',type_place:'parroquia',place_id:191)

Place.create(name:'Piñango',type_place:'parroquia',place_id:191)

Place.create(name:'Timotes',type_place:'parroquia',place_id:191)

Place.create(name:'Eloy Paredes',type_place:'parroquia',place_id:192)

Place.create(name:'San Rafael de Alcázar',type_place:'parroquia',place_id:192)

Place.create(name:'Santa Elena de Arenales',type_place:'parroquia',place_id:192)

Place.create(name:'Santa María de Caparo',type_place:'parroquia',place_id:193)

Place.create(name:'Pueblo Llano',type_place:'parroquia',place_id:194)

Place.create(name:'Cacute',type_place:'parroquia',place_id:195)

Place.create(name:'La Toma',type_place:'parroquia',place_id:195)

Place.create(name:'Mucuchíes',type_place:'parroquia',place_id:195)

Place.create(name:'Mucurubá',type_place:'parroquia',place_id:195)

Place.create(name:'San Rafael',type_place:'parroquia',place_id:195)

Place.create(name:'Gerónimo Maldonado',type_place:'parroquia',place_id:196)

Place.create(name:'Bailadores',type_place:'parroquia',place_id:196)

Place.create(name:'Tabay',type_place:'parroquia',place_id:197)

Place.create(name:'Chiguará',type_place:'parroquia',place_id:198)

Place.create(name:'Estánquez',type_place:'parroquia',place_id:198)

Place.create(name:'Lagunillas',type_place:'parroquia',place_id:198)

Place.create(name:'La Trampa',type_place:'parroquia',place_id:198)

Place.create(name:'Pueblo Nuevo del Sur',type_place:'parroquia',place_id:198)

Place.create(name:'San Juan',type_place:'parroquia',place_id:198)

Place.create(name:'El Amparo',type_place:'parroquia',place_id:199)

Place.create(name:'El Llano',type_place:'parroquia',place_id:199)

Place.create(name:'San Francisco',type_place:'parroquia',place_id:199)

Place.create(name:'Tovar',type_place:'parroquia',place_id:199)

Place.create(name:'Independencia',type_place:'parroquia',place_id:200)

Place.create(name:'María de la Concepción Palacios Blanco',type_place:'parroquia',place_id:200)

Place.create(name:'Nueva Bolivia',type_place:'parroquia',place_id:200)

Place.create(name:'Santa Apolonia',type_place:'parroquia',place_id:200)

Place.create(name:'Caño El Tigre',type_place:'parroquia',place_id:201)

Place.create(name:'Zea',type_place:'parroquia',place_id:201)

Place.create(name:'Aragüita',type_place:'parroquia',place_id:202)

Place.create(name:'Arévalo González',type_place:'parroquia',place_id:202)

Place.create(name:'Capaya',type_place:'parroquia',place_id:202)

Place.create(name:'Caucagua',type_place:'parroquia',place_id:202)

Place.create(name:'Panaquire',type_place:'parroquia',place_id:202)

Place.create(name:'Ribas',type_place:'parroquia',place_id:202)

Place.create(name:'El Café',type_place:'parroquia',place_id:202)

Place.create(name:'Marizapa',type_place:'parroquia',place_id:202)

Place.create(name:'Cumbo',type_place:'parroquia',place_id:203)

Place.create(name:'San José de Barlovento',type_place:'parroquia',place_id:203)

Place.create(name:'El Cafetal',type_place:'parroquia',place_id:204)

Place.create(name:'Las Minas',type_place:'parroquia',place_id:204)

Place.create(name:'Nuestra Señora del Rosario',type_place:'parroquia',place_id:204)

Place.create(name:'Higuerote',type_place:'parroquia',place_id:205)

Place.create(name:'Curiepe',type_place:'parroquia',place_id:205)

Place.create(name:'Tacarigua de Brión',type_place:'parroquia',place_id:205)

Place.create(name:'Mamporal',type_place:'parroquia',place_id:206)

Place.create(name:'Carrizal',type_place:'parroquia',place_id:207)

Place.create(name:'Chacao',type_place:'parroquia',place_id:208)

Place.create(name:'Charallave',type_place:'parroquia',place_id:209)

Place.create(name:'Las Brisas',type_place:'parroquia',place_id:209)

Place.create(name:'El Hatillo',type_place:'parroquia',place_id:210)

Place.create(name:'Altagracia de la Montaña',type_place:'parroquia',place_id:211)

Place.create(name:'Cecilio Acosta',type_place:'parroquia',place_id:211)

Place.create(name:'Los Teques',type_place:'parroquia',place_id:211)

Place.create(name:'El Jarillo',type_place:'parroquia',place_id:211)

Place.create(name:'San Pedro',type_place:'parroquia',place_id:211)

Place.create(name:'Tácata',type_place:'parroquia',place_id:211)

Place.create(name:'Paracotos',type_place:'parroquia',place_id:211)

Place.create(name:'Cartanal',type_place:'parroquia',place_id:212)

Place.create(name:'Santa Teresa del Tuy',type_place:'parroquia',place_id:212)

Place.create(name:'La Democracia',type_place:'parroquia',place_id:213)

Place.create(name:'Ocumare del Tuy',type_place:'parroquia',place_id:213)

Place.create(name:'Santa Bárbara',type_place:'parroquia',place_id:213)

Place.create(name:'San Antonio de los Altos',type_place:'parroquia',place_id:214)

Place.create(name:'Río Chico',type_place:'parroquia',place_id:215)

Place.create(name:'El Guapo',type_place:'parroquia',place_id:215)

Place.create(name:'Tacarigua de la Laguna',type_place:'parroquia',place_id:215)

Place.create(name:'Paparo',type_place:'parroquia',place_id:215)

Place.create(name:'San Fernando del Guapo',type_place:'parroquia',place_id:215)

Place.create(name:'Santa Lucía del Tuy',type_place:'parroquia',place_id:216)

Place.create(name:'Cúpira',type_place:'parroquia',place_id:217)

Place.create(name:'Machurucuto',type_place:'parroquia',place_id:217)

Place.create(name:'Guarenas',type_place:'parroquia',place_id:218)

Place.create(name:'San Antonio de Yare',type_place:'parroquia',place_id:219)

Place.create(name:'San Francisco de Yare',type_place:'parroquia',place_id:219)

Place.create(name:'Leoncio Martínez',type_place:'parroquia',place_id:220)

Place.create(name:'Petare',type_place:'parroquia',place_id:220)

Place.create(name:'Caucagüita',type_place:'parroquia',place_id:220)

Place.create(name:'Filas de Mariche',type_place:'parroquia',place_id:220)

Place.create(name:'La Dolorita',type_place:'parroquia',place_id:220)

Place.create(name:'Cúa',type_place:'parroquia',place_id:221)

Place.create(name:'Nueva Cúa',type_place:'parroquia',place_id:221)

Place.create(name:'Guatire',type_place:'parroquia',place_id:222)

Place.create(name:'Bolívar',type_place:'parroquia',place_id:222)

Place.create(name:'San Antonio de Maturín',type_place:'parroquia',place_id:223)

Place.create(name:'San Francisco de Maturín',type_place:'parroquia',place_id:223)

Place.create(name:'Aguasay',type_place:'parroquia',place_id:224)

Place.create(name:'Caripito',type_place:'parroquia',place_id:225)

Place.create(name:'El Guácharo',type_place:'parroquia',place_id:226)

Place.create(name:'La Guanota',type_place:'parroquia',place_id:226)

Place.create(name:'Sabana de Piedra',type_place:'parroquia',place_id:226)

Place.create(name:'San Agustín',type_place:'parroquia',place_id:226)

Place.create(name:'Teresen',type_place:'parroquia',place_id:226)

Place.create(name:'Caripe',type_place:'parroquia',place_id:226)

Place.create(name:'Areo',type_place:'parroquia',place_id:227)

Place.create(name:'Capital Cedeño',type_place:'parroquia',place_id:227)

Place.create(name:'San Félix de Cantalicio',type_place:'parroquia',place_id:227)

Place.create(name:'Viento Fresco',type_place:'parroquia',place_id:227)

Place.create(name:'El Tejero',type_place:'parroquia',place_id:228)

Place.create(name:'Punta de Mata',type_place:'parroquia',place_id:228)

Place.create(name:'Chaguaramas',type_place:'parroquia',place_id:229)

Place.create(name:'Las Alhuacas',type_place:'parroquia',place_id:229)

Place.create(name:'Tabasca',type_place:'parroquia',place_id:229)

Place.create(name:'Temblador',type_place:'parroquia',place_id:229)

Place.create(name:'Alto de los Godos',type_place:'parroquia',place_id:230)

Place.create(name:'Boquerón',type_place:'parroquia',place_id:230)

Place.create(name:'Las Cocuizas',type_place:'parroquia',place_id:230)

Place.create(name:'La Cruz',type_place:'parroquia',place_id:230)

Place.create(name:'San Simón',type_place:'parroquia',place_id:230)

Place.create(name:'El Corozo',type_place:'parroquia',place_id:230)

Place.create(name:'El Furrial',type_place:'parroquia',place_id:230)

Place.create(name:'Jusepín',type_place:'parroquia',place_id:230)

Place.create(name:'La Pica',type_place:'parroquia',place_id:230)

Place.create(name:'San Vicente',type_place:'parroquia',place_id:230)

Place.create(name:'Aparicio',type_place:'parroquia',place_id:231)

Place.create(name:'Aragua de Maturín',type_place:'parroquia',place_id:231)

Place.create(name:'Chaguamal',type_place:'parroquia',place_id:231)

Place.create(name:'El Pinto',type_place:'parroquia',place_id:231)

Place.create(name:'Guanaguana',type_place:'parroquia',place_id:231)

Place.create(name:'La Toscana',type_place:'parroquia',place_id:231)

Place.create(name:'Taguaya',type_place:'parroquia',place_id:231)

Place.create(name:'Cachipo',type_place:'parroquia',place_id:232)

Place.create(name:'Quiriquire',type_place:'parroquia',place_id:232)

Place.create(name:'Santa Bárbara',type_place:'parroquia',place_id:233)

Place.create(name:'Barrancas',type_place:'parroquia',place_id:234)

Place.create(name:'Los Barrancos de Fajardo',type_place:'parroquia',place_id:234)

Place.create(name:'Uracoa',type_place:'parroquia',place_id:235)

Place.create(name:'Antolín del Campo',type_place:'parroquia',place_id:236)

Place.create(name:'Arismendi',type_place:'parroquia',place_id:237)

Place.create(name:'García',type_place:'parroquia',place_id:238)

Place.create(name:'Francisco Fajardo',type_place:'parroquia',place_id:238)

Place.create(name:'Bolívar',type_place:'parroquia',place_id:239)

Place.create(name:'Guevara',type_place:'parroquia',place_id:239)

Place.create(name:'Matasiete',type_place:'parroquia',place_id:239)

Place.create(name:'Santa Ana',type_place:'parroquia',place_id:239)

Place.create(name:'Sucre',type_place:'parroquia',place_id:239)

Place.create(name:'Aguirre',type_place:'parroquia',place_id:240)

Place.create(name:'Maneiro',type_place:'parroquia',place_id:240)

Place.create(name:'Adrián',type_place:'parroquia',place_id:241)

Place.create(name:'Juan Griego',type_place:'parroquia',place_id:241)

Place.create(name:'Yaguaraparo',type_place:'parroquia',place_id:241)

Place.create(name:'Porlamar',type_place:'parroquia',place_id:276)

Place.create(name:'San Francisco de Macanao',type_place:'parroquia',place_id:277)

Place.create(name:'Boca de Río',type_place:'parroquia',place_id:277)

Place.create(name:'Tubores',type_place:'parroquia',place_id:278)

Place.create(name:'Los Baleales',type_place:'parroquia',place_id:278)

Place.create(name:'Vicente Fuentes',type_place:'parroquia',place_id:279)

Place.create(name:'Villalba',type_place:'parroquia',place_id:279)

Place.create(name:'San Juan Bautista',type_place:'parroquia',place_id:277)

Place.create(name:'Zabala',type_place:'parroquia',place_id:280)

Place.create(name:'Capital Araure',type_place:'parroquia',place_id:282)

Place.create(name:'Río Acarigua',type_place:'parroquia',place_id:282)

Place.create(name:'Capital Esteller',type_place:'parroquia',place_id:283)

Place.create(name:'Uveral',type_place:'parroquia',place_id:283)

Place.create(name:'Guanare',type_place:'parroquia',place_id:250)

Place.create(name:'Córdoba',type_place:'parroquia',place_id:250)

Place.create(name:'San José de la Montaña',type_place:'parroquia',place_id:250)

Place.create(name:'San Juan de Guanaguanare',type_place:'parroquia',place_id:250)

Place.create(name:'Virgen de la Coromoto',type_place:'parroquia',place_id:250)

Place.create(name:'Guanarito',type_place:'parroquia',place_id:251)

Place.create(name:'Trinidad de la Capilla',type_place:'parroquia',place_id:251)

Place.create(name:'Divina Pastora',type_place:'parroquia',place_id:251)

Place.create(name:'Monseñor José Vicente de Unda',type_place:'parroquia',place_id:252)

Place.create(name:'Peña Blanca',type_place:'parroquia',place_id:252)

Place.create(name:'Capital Ospino',type_place:'parroquia',place_id:253)

Place.create(name:'Aparición',type_place:'parroquia',place_id:253)

Place.create(name:'La Estación',type_place:'parroquia',place_id:253)

Place.create(name:'Páez',type_place:'parroquia',place_id:254)

Place.create(name:'Payara',type_place:'parroquia',place_id:254)

Place.create(name:'Pimpinela',type_place:'parroquia',place_id:254)

Place.create(name:'Ramón Peraza',type_place:'parroquia',place_id:254)

Place.create(name:'Papelón',type_place:'parroquia',place_id:255)

Place.create(name:'Caño Delgadito',type_place:'parroquia',place_id:255)

Place.create(name:'San Genaro de Boconoito',type_place:'parroquia',place_id:256)

Place.create(name:'Antolín Tovar',type_place:'parroquia',place_id:256)

Place.create(name:'San Rafael de Onoto',type_place:'parroquia',place_id:257)

Place.create(name:'Santa Fe',type_place:'parroquia',place_id:257)

Place.create(name:'ThermoMorles',type_place:'parroquia',place_id:257)

Place.create(name:'Santa Rosalía',type_place:'parroquia',place_id:258)

Place.create(name:'Florida',type_place:'parroquia',place_id:258)

Place.create(name:'Sucre',type_place:'parroquia',place_id:259)

Place.create(name:'Concepción',type_place:'parroquia',place_id:259)

Place.create(name:'San Rafael de Palo Alzado',type_place:'parroquia',place_id:259)

Place.create(name:'Uvencio Antonio Velásquez',type_place:'parroquia',place_id:259)

Place.create(name:'San José de Saguaz',type_place:'parroquia',place_id:259)

Place.create(name:'Villa Rosa',type_place:'parroquia',place_id:259)

Place.create(name:'Turén',type_place:'parroquia',place_id:260)

Place.create(name:'Canelones',type_place:'parroquia',place_id:260)

Place.create(name:'Santa Cruz',type_place:'parroquia',place_id:260)

Place.create(name:'San Isidro Labrador',type_place:'parroquia',place_id:260)

Place.create(name:'Mariño',type_place:'parroquia',place_id:261)

Place.create(name:'Rómulo Gallegos',type_place:'parroquia',place_id:261)

Place.create(name:'San José de Aerocuar',type_place:'parroquia',place_id:262)

Place.create(name:'Tavera Acosta',type_place:'parroquia',place_id:262)

Place.create(name:'Río Caribe',type_place:'parroquia',place_id:263)

Place.create(name:'Antonio José de Sucre',type_place:'parroquia',place_id:263)

Place.create(name:'El Morro de Puerto Santo',type_place:'parroquia',place_id:263)

Place.create(name:'Puerto Santo',type_place:'parroquia',place_id:263)

Place.create(name:'San Juan de las Galdonas',type_place:'parroquia',place_id:263)

Place.create(name:'El Pilar',type_place:'parroquia',place_id:264)

Place.create(name:'El Rincón',type_place:'parroquia',place_id:264)

Place.create(name:'General Francisco Antonio Váquez',type_place:'parroquia',place_id:264)

Place.create(name:'Guaraúnos',type_place:'parroquia',place_id:264)

Place.create(name:'Tunapuicito',type_place:'parroquia',place_id:264)

Place.create(name:'Unión',type_place:'parroquia',place_id:264)

Place.create(name:'Santa Catalina',type_place:'parroquia',place_id:265)

Place.create(name:'Santa Rosa',type_place:'parroquia',place_id:265)

Place.create(name:'Santa Teresa',type_place:'parroquia',place_id:265)

Place.create(name:'Bolívar',type_place:'parroquia',place_id:265)

Place.create(name:'Maracapana',type_place:'parroquia',place_id:265)

Place.create(name:'Libertad',type_place:'parroquia',place_id:267)

Place.create(name:'El Paujil',type_place:'parroquia',place_id:267)

Place.create(name:'Yaguaraparo',type_place:'parroquia',place_id:267)

Place.create(name:'Cruz Salmerón Acosta',type_place:'parroquia',place_id:268)

Place.create(name:'Chacopata',type_place:'parroquia',place_id:268)

Place.create(name:'Manicuare',type_place:'parroquia',place_id:268)

Place.create(name:'Tunapuy',type_place:'parroquia',place_id:269)

Place.create(name:'Campo Elías',type_place:'parroquia',place_id:269)

Place.create(name:'Irapa',type_place:'parroquia',place_id:270)

Place.create(name:'Campo Claro',type_place:'parroquia',place_id:270)

Place.create(name:'Maraval',type_place:'parroquia',place_id:270)

Place.create(name:'San Antonio de Irapa',type_place:'parroquia',place_id:270)

Place.create(name:'Soro',type_place:'parroquia',place_id:270)

Place.create(name:'Mejía',type_place:'parroquia',place_id:271)

Place.create(name:'Cumanacoa',type_place:'parroquia',place_id:272)

Place.create(name:'Arenas',type_place:'parroquia',place_id:272)

Place.create(name:'Aricagua',type_place:'parroquia',place_id:272)

Place.create(name:'Cogollar',type_place:'parroquia',place_id:272)

Place.create(name:'San Fernando',type_place:'parroquia',place_id:272)

Place.create(name:'San Lorenzo',type_place:'parroquia',place_id:272)

Place.create(name:'Villa Frontado (Muelle de Cariaco)',type_place:'parroquia',place_id:273)

Place.create(name:'Catuaro',type_place:'parroquia',place_id:273)

Place.create(name:'Rendón',type_place:'parroquia',place_id:273)

Place.create(name:'San Cruz',type_place:'parroquia',place_id:273)

Place.create(name:'Santa María',type_place:'parroquia',place_id:273)

Place.create(name:'Altagracia',type_place:'parroquia',place_id:274)

Place.create(name:'Santa Inés',type_place:'parroquia',place_id:274)

Place.create(name:'Valentín Valiente',type_place:'parroquia',place_id:274)

Place.create(name:'Ayacucho',type_place:'parroquia',place_id:274)

Place.create(name:'San Juan',type_place:'parroquia',place_id:274)

Place.create(name:'Raúl Leoni',type_place:'parroquia',place_id:274)

Place.create(name:'Gran Mariscal',type_place:'parroquia',place_id:274)

Place.create(name:'Cristóbal Colón',type_place:'parroquia',place_id:275)

Place.create(name:'Bideau',type_place:'parroquia',place_id:275)

Place.create(name:'Punta de Piedras',type_place:'parroquia',place_id:275)

Place.create(name:'Güiria',type_place:'parroquia',place_id:275)

Place.create(name:'Andrés Bello',type_place:'parroquia',place_id:276)

Place.create(name:'Antonio Rómulo Costa',type_place:'parroquia',place_id:277)

Place.create(name:'Ayacucho',type_place:'parroquia',place_id:278)

Place.create(name:'Rivas Berti',type_place:'parroquia',place_id:278)

Place.create(name:'San Pedro del Río',type_place:'parroquia',place_id:278)

Place.create(name:'Bolívar',type_place:'parroquia',place_id:279)

Place.create(name:'Palotal',type_place:'parroquia',place_id:279)

Place.create(name:'General Juan Vicente Gómez',type_place:'parroquia',place_id:279)

Place.create(name:'Isaías Medina Angarita',type_place:'parroquia',place_id:279)

Place.create(name:'Cárdenas',type_place:'parroquia',place_id:280)

Place.create(name:'Amenodoro Ángel Lamus',type_place:'parroquia',place_id:280)

Place.create(name:'La Florida',type_place:'parroquia',place_id:280)

Place.create(name:'Córdoba',type_place:'parroquia',place_id:281)

Place.create(name:'Fernández Feo',type_place:'parroquia',place_id:282)

Place.create(name:'Alberto Adriani',type_place:'parroquia',place_id:282)

Place.create(name:'Santo Domingo',type_place:'parroquia',place_id:282)

Place.create(name:'Francisco de Miranda',type_place:'parroquia',place_id:283)

Place.create(name:'García de Hevia',type_place:'parroquia',place_id:284)

Place.create(name:'Boca de Grita',type_place:'parroquia',place_id:284)

Place.create(name:'José Antonio Páez',type_place:'parroquia',place_id:284)

Place.create(name:'Guásimos',type_place:'parroquia',place_id:285)

Place.create(name:'Independencia',type_place:'parroquia',place_id:286)

Place.create(name:'Juan Germán Roscio',type_place:'parroquia',place_id:286)

Place.create(name:'Román Cárdenas',type_place:'parroquia',place_id:286)

Place.create(name:'Jáuregui',type_place:'parroquia',place_id:287)

Place.create(name:'Emilio Constantino Guerrero',type_place:'parroquia',place_id:287)

Place.create(name:'Monseñor Miguel Antonio Salas',type_place:'parroquia',place_id:287)

Place.create(name:'José María Vargas',type_place:'parroquia',place_id:288)

Place.create(name:'Junín',type_place:'parroquia',place_id:289)

Place.create(name:'La Petrólea',type_place:'parroquia',place_id:289)

Place.create(name:'Quinimarí',type_place:'parroquia',place_id:289)

Place.create(name:'Bramón',type_place:'parroquia',place_id:289)

Place.create(name:'Libertad',type_place:'parroquia',place_id:290)

Place.create(name:'Cipriano Castro',type_place:'parroquia',place_id:290)

Place.create(name:'Manuel Felipe Rugeles',type_place:'parroquia',place_id:290)

Place.create(name:'Libertador',type_place:'parroquia',place_id:291)

Place.create(name:'Doradas',type_place:'parroquia',place_id:291)

Place.create(name:'Emeterio Ochoa',type_place:'parroquia',place_id:291)

Place.create(name:'San Joaquín de Navay',type_place:'parroquia',place_id:291)

Place.create(name:'Lobatera',type_place:'parroquia',place_id:292)

Place.create(name:'Constitución',type_place:'parroquia',place_id:292)

Place.create(name:'Michelena',type_place:'parroquia',place_id:293)

Place.create(name:'Panamericano',type_place:'parroquia',place_id:294)

Place.create(name:'La Palmita',type_place:'parroquia',place_id:294)

Place.create(name:'Pedro María Ureña',type_place:'parroquia',place_id:295)

Place.create(name:'Nueva Arcadia',type_place:'parroquia',place_id:295)

Place.create(name:'Delicias',type_place:'parroquia',place_id:296)

Place.create(name:'Pecaya',type_place:'parroquia',place_id:296)

Place.create(name:'Samuel Darío Maldonado',type_place:'parroquia',place_id:297)

Place.create(name:'Boconó',type_place:'parroquia',place_id:297)

Place.create(name:'Hernández',type_place:'parroquia',place_id:297)

Place.create(name:'La Concordia',type_place:'parroquia',place_id:298)

Place.create(name:'San Juan Bautista',type_place:'parroquia',place_id:298)

Place.create(name:'Pedro María Morantes',type_place:'parroquia',place_id:298)

Place.create(name:'San Sebastián',type_place:'parroquia',place_id:298)

Place.create(name:'Dr. Francisco Romero Lobo',type_place:'parroquia',place_id:298)

Place.create(name:'Seboruco',type_place:'parroquia',place_id:299)

Place.create(name:'Simón Rodríguez',type_place:'parroquia',place_id:300)

Place.create(name:'Sucre',type_place:'parroquia',place_id:301)

Place.create(name:'Eleazar López Contreras',type_place:'parroquia',place_id:301)

Place.create(name:'San Pablo',type_place:'parroquia',place_id:301)

Place.create(name:'Torbes',type_place:'parroquia',place_id:302)

Place.create(name:'Uribante',type_place:'parroquia',place_id:303)

Place.create(name:'Cárdenas',type_place:'parroquia',place_id:303)

Place.create(name:'Juan Pablo Peñalosa',type_place:'parroquia',place_id:303)

Place.create(name:'Potosí',type_place:'parroquia',place_id:303)

Place.create(name:'San Judas Tadeo',type_place:'parroquia',place_id:304)

Place.create(name:'Araguaney',type_place:'parroquia',place_id:305)

Place.create(name:'El Jaguito',type_place:'parroquia',place_id:305)

Place.create(name:'La Esperanza',type_place:'parroquia',place_id:305)

Place.create(name:'Santa Isabel',type_place:'parroquia',place_id:305)

Place.create(name:'Boconó',type_place:'parroquia',place_id:306)

Place.create(name:'El Carmen',type_place:'parroquia',place_id:306)

Place.create(name:'Mosquey',type_place:'parroquia',place_id:306)

Place.create(name:'Ayacucho',type_place:'parroquia',place_id:306)

Place.create(name:'Burbusay',type_place:'parroquia',place_id:306)

Place.create(name:'General Ribas',type_place:'parroquia',place_id:306)

Place.create(name:'Guaramacal',type_place:'parroquia',place_id:306)

Place.create(name:'Vega de Guaramacal',type_place:'parroquia',place_id:306)

Place.create(name:'Monseñor Jáuregui',type_place:'parroquia',place_id:306)

Place.create(name:'Rafael Rangel',type_place:'parroquia',place_id:306)

Place.create(name:'San Miguel',type_place:'parroquia',place_id:306)

Place.create(name:'San José',type_place:'parroquia',place_id:306)

Place.create(name:'Sabana Grande',type_place:'parroquia',place_id:307)

Place.create(name:'Cheregüé',type_place:'parroquia',place_id:307)

Place.create(name:'Granados',type_place:'parroquia',place_id:307)

Place.create(name:'Arnoldo Gabaldón',type_place:'parroquia',place_id:308)

Place.create(name:'Bolivia',type_place:'parroquia',place_id:308)

Place.create(name:'Carrillo',type_place:'parroquia',place_id:308)

Place.create(name:'Cegarra',type_place:'parroquia',place_id:308)

Place.create(name:'Chejendé',type_place:'parroquia',place_id:308)

Place.create(name:'Manuel Salvador Ulloa',type_place:'parroquia',place_id:308)

Place.create(name:'San José',type_place:'parroquia',place_id:308)

Place.create(name:'Carache',type_place:'parroquia',place_id:309)

Place.create(name:'La Concepción',type_place:'parroquia',place_id:309)

Place.create(name:'Cuicas',type_place:'parroquia',place_id:309)

Place.create(name:'Panamericana',type_place:'parroquia',place_id:309)

Place.create(name:'Santa Cruz',type_place:'parroquia',place_id:309)

Place.create(name:'Escuque',type_place:'parroquia',place_id:310)

Place.create(name:'La Unión',type_place:'parroquia',place_id:310)

Place.create(name:'Santa Rita',type_place:'parroquia',place_id:310)

Place.create(name:'Sabana Libre',type_place:'parroquia',place_id:310)

Place.create(name:'El Socorro',type_place:'parroquia',place_id:311)

Place.create(name:'Los Caprichos',type_place:'parroquia',place_id:311)

Place.create(name:'Antonio José de Sucre',type_place:'parroquia',place_id:311)

Place.create(name:'Campo Elías',type_place:'parroquia',place_id:312)

Place.create(name:'Arnoldo Gabaldón',type_place:'parroquia',place_id:312)

Place.create(name:'Santa Apolonia',type_place:'parroquia',place_id:313)

Place.create(name:'El Progreso',type_place:'parroquia',place_id:313)

Place.create(name:'La Ceiba',type_place:'parroquia',place_id:313)

Place.create(name:'Tres de Febrero',type_place:'parroquia',place_id:313)

Place.create(name:'El Dividive',type_place:'parroquia',place_id:314)

Place.create(name:'Agua Santa',type_place:'parroquia',place_id:314)

Place.create(name:'Agua Caliente',type_place:'parroquia',place_id:314)

Place.create(name:'El Cenizo',type_place:'parroquia',place_id:314)

Place.create(name:'Valerita',type_place:'parroquia',place_id:314)

Place.create(name:'Monte Carmelo',type_place:'parroquia',place_id:315)

Place.create(name:'Buena Vista',type_place:'parroquia',place_id:315)

Place.create(name:'Santa María del Horcón',type_place:'parroquia',place_id:315)

Place.create(name:'Motatán',type_place:'parroquia',place_id:316)

Place.create(name:'El Baño',type_place:'parroquia',place_id:316)

Place.create(name:'Jalisco',type_place:'parroquia',place_id:316)

Place.create(name:'Pampán',type_place:'parroquia',place_id:317)

Place.create(name:'Flor de Patria',type_place:'parroquia',place_id:317)

Place.create(name:'La Paz',type_place:'parroquia',place_id:317)

Place.create(name:'Santa Ana',type_place:'parroquia',place_id:317)

Place.create(name:'Pampanito',type_place:'parroquia',place_id:318)

Place.create(name:'La Concepción',type_place:'parroquia',place_id:318)

Place.create(name:'Pampanito II',type_place:'parroquia',place_id:318)

Place.create(name:'Betijoque',type_place:'parroquia',place_id:319)

Place.create(name:'José Gregorio Hernández',type_place:'parroquia',place_id:319)

Place.create(name:'La Pueblita',type_place:'parroquia',place_id:319)

Place.create(name:'Los Cedros',type_place:'parroquia',place_id:319)

Place.create(name:'Carvajal',type_place:'parroquia',place_id:320)

Place.create(name:'Campo Alegre',type_place:'parroquia',place_id:320)

Place.create(name:'Antonio Nicolás Briceño',type_place:'parroquia',place_id:320)

Place.create(name:'José Leonardo Suárez',type_place:'parroquia',place_id:320)

Place.create(name:'Sabana de Mendoza',type_place:'parroquia',place_id:321)

Place.create(name:'Junín',type_place:'parroquia',place_id:321)

Place.create(name:'Valmore Rodríguez',type_place:'parroquia',place_id:321)

Place.create(name:'El Paraíso',type_place:'parroquia',place_id:321)

Place.create(name:'Andrés Linares',type_place:'parroquia',place_id:322)

Place.create(name:'Chiquinquirá',type_place:'parroquia',place_id:322)

Place.create(name:'Cristóbal Mendoza',type_place:'parroquia',place_id:322)

Place.create(name:'Cruz Carrillo',type_place:'parroquia',place_id:322)

Place.create(name:'Matriz',type_place:'parroquia',place_id:322)

Place.create(name:'Monseñor Carrillo',type_place:'parroquia',place_id:322)

Place.create(name:'Tres Esquinas',type_place:'parroquia',place_id:322)

Place.create(name:'Cabimbú',type_place:'parroquia',place_id:323)

Place.create(name:'Jajó',type_place:'parroquia',place_id:323)

Place.create(name:'La Mesa de Esnujaque',type_place:'parroquia',place_id:233)

Place.create(name:'Santiago',type_place:'parroquia',place_id:323)

Place.create(name:'Tuñame',type_place:'parroquia',place_id:323)

Place.create(name:'La Quebrada',type_place:'parroquia',place_id:323)

Place.create(name:'Juan Ignacio Montilla',type_place:'parroquia',place_id:324)

Place.create(name:'La Beatriz',type_place:'parroquia',place_id:324)

Place.create(name:'La Puerta',type_place:'parroquia',place_id:324)

Place.create(name:'Mendoza del Valle de Momboy',type_place:'parroquia',place_id:324)

Place.create(name:'Mercedes Díaz',type_place:'parroquia',place_id:324)

Place.create(name:'San Luis',type_place:'parroquia',place_id:324)

Place.create(name:'Caraballeda',type_place:'parroquia',place_id:325)

Place.create(name:'Carayaca',type_place:'parroquia',place_id:325)

Place.create(name:'Carlos Soublette',type_place:'parroquia',place_id:325)

Place.create(name:'Caruao Chuspa',type_place:'parroquia',place_id:325)

Place.create(name:'Catia La Mar',type_place:'parroquia',place_id:325)

Place.create(name:'El Junko',type_place:'parroquia',place_id:325)

Place.create(name:'La Guaira',type_place:'parroquia',place_id:325)

Place.create(name:'Macuto',type_place:'parroquia',place_id:325)

Place.create(name:'Maiquetía',type_place:'parroquia',place_id:325)

Place.create(name:'Naiguatá',type_place:'parroquia',place_id:325)

Place.create(name:'Urimare',type_place:'parroquia',place_id:325)

Place.create(name:'Arístides Bastidas',type_place:'parroquia',place_id:326)

Place.create(name:'Bolívar',type_place:'parroquia',place_id:327)

Place.create(name:'Chivacoa',type_place:'parroquia',place_id:328)

Place.create(name:'Campo Elías',type_place:'parroquia',place_id:328)

Place.create(name:'Cocorote',type_place:'parroquia',place_id:329)

Place.create(name:'Independencia',type_place:'parroquia',place_id:330)

Place.create(name:'José Antonio Páez',type_place:'parroquia',place_id:331)

Place.create(name:'La Trinidad',type_place:'parroquia',place_id:332)

Place.create(name:'Manuel Monge',type_place:'parroquia',place_id:333)

Place.create(name:'Salóm',type_place:'parroquia',place_id:334)

Place.create(name:'Temerla',type_place:'parroquia',place_id:334)

Place.create(name:'Nirgua',type_place:'parroquia',place_id:334)

Place.create(name:'San Andrés',type_place:'parroquia',place_id:335)

Place.create(name:'Yaritagua',type_place:'parroquia',place_id:335)

Place.create(name:'San Javier',type_place:'parroquia',place_id:336)

Place.create(name:'Albarico',type_place:'parroquia',place_id:336)

Place.create(name:'San Felipe',type_place:'parroquia',place_id:336)

Place.create(name:'Sucre',type_place:'parroquia',place_id:337)

Place.create(name:'Urachiche',type_place:'parroquia',place_id:338)

Place.create(name:'El Guayabo',type_place:'parroquia',place_id:339)

Place.create(name:'Farriar',type_place:'parroquia',place_id:339)

Place.create(name:'Isla de Toas',type_place:'parroquia',place_id:340)

Place.create(name:'Monagas',type_place:'parroquia',place_id:340)

Place.create(name:'San Timoteo',type_place:'parroquia',place_id:341)

Place.create(name:'General Urdaneta',type_place:'parroquia',place_id:341)

Place.create(name:'Libertador',type_place:'parroquia',place_id:341)

Place.create(name:'Marcelino Briceño',type_place:'parroquia',place_id:341)

Place.create(name:'Pueblo Nuevo',type_place:'parroquia',place_id:341)

Place.create(name:'Manuel Guanipa Matos',type_place:'parroquia',place_id:341)

Place.create(name:'Ambrosio',type_place:'parroquia',place_id:342)

Place.create(name:'Carmen Herrera',type_place:'parroquia',place_id:342)

Place.create(name:'La Rosa',type_place:'parroquia',place_id:342)

Place.create(name:'Germán Ríos Linares',type_place:'parroquia',place_id:342)

Place.create(name:'San Benito',type_place:'parroquia',place_id:342)

Place.create(name:'Rómulo Betancourt',type_place:'parroquia',place_id:342)

Place.create(name:'Jorge Hernández',type_place:'parroquia',place_id:342)

Place.create(name:'Punta Gorda',type_place:'parroquia',place_id:342)

Place.create(name:'Arístides Calvani',type_place:'parroquia',place_id:342)

Place.create(name:'Encontrados',type_place:'parroquia',place_id:343)

Place.create(name:'Udón Pérez',type_place:'parroquia',place_id:343)

Place.create(name:'Moralito',type_place:'parroquia',place_id:344)

Place.create(name:'San Carlos del Zulia',type_place:'parroquia',place_id:344)

Place.create(name:'Santa Cruz del Zulia',type_place:'parroquia',place_id:344)

Place.create(name:'Santa Bárbara',type_place:'parroquia',place_id:344)

Place.create(name:'Urribarrí',type_place:'parroquia',place_id:344)

Place.create(name:'Carlos Quevedo',type_place:'parroquia',place_id:345)

Place.create(name:'Francisco Javier Pulgar',type_place:'parroquia',place_id:345)

Place.create(name:'Simón Rodríguez',type_place:'parroquia',place_id:345)

Place.create(name:'Guamo-Gavilanes',type_place:'parroquia',place_id:345)

Place.create(name:'La Concepción',type_place:'parroquia',place_id:347)

Place.create(name:'San José',type_place:'parroquia',place_id:347)

Place.create(name:'Mariano Parra León',type_place:'parroquia',place_id:347)

Place.create(name:'José Ramón Yépez',type_place:'parroquia',place_id:347)

Place.create(name:'Jesús María Semprún',type_place:'parroquia',place_id:348)

Place.create(name:'Barí',type_place:'parroquia',place_id:348)

Place.create(name:'Concepción',type_place:'parroquia',place_id:349)

Place.create(name:'Andrés Bello',type_place:'parroquia',place_id:349)

Place.create(name:'Chiquinquirá',type_place:'parroquia',place_id:349)

Place.create(name:'El Carmelo',type_place:'parroquia',place_id:349)

Place.create(name:'Potreritos',type_place:'parroquia',place_id:349)

Place.create(name:'Libertad',type_place:'parroquia',place_id:350)

Place.create(name:'Alonso de Ojeda',type_place:'parroquia',place_id:350)

Place.create(name:'Venezuela',type_place:'parroquia',place_id:350)

Place.create(name:'Eleazar López Contreras',type_place:'parroquia',place_id:350)

Place.create(name:'Campo Lara',type_place:'parroquia',place_id:350)

Place.create(name:'Bartolomé de las Casas',type_place:'parroquia',place_id:351)

Place.create(name:'Libertad',type_place:'parroquia',place_id:351)

Place.create(name:'Río Negro',type_place:'parroquia',place_id:351)

Place.create(name:'San José de Perijá',type_place:'parroquia',place_id:351)

Place.create(name:'San Rafael',type_place:'parroquia',place_id:352)

Place.create(name:'La Sierrita',type_place:'parroquia',place_id:352)

Place.create(name:'Las Parcelas',type_place:'parroquia',place_id:352)

Place.create(name:'Luis de Vicente',type_place:'parroquia',place_id:352)

Place.create(name:'Monseñor Marcos Sergio Godoy',type_place:'parroquia',place_id:352)

Place.create(name:'Ricaurte',type_place:'parroquia',place_id:352)

Place.create(name:'Tamare',type_place:'parroquia',place_id:352)

Place.create(name:'Antonio Borjas Romero',type_place:'parroquia',place_id:353)

Place.create(name:'Bolívar',type_place:'parroquia',place_id:353)

Place.create(name:'Cacique Mara',type_place:'parroquia',place_id:353)

Place.create(name:'Carracciolo Parra Pérez',type_place:'parroquia',place_id:353)

Place.create(name:'Cecilio Acosta',type_place:'parroquia',place_id:353)

Place.create(name:'Cristo de Aranza',type_place:'parroquia',place_id:353)

Place.create(name:'Coquivacoa',type_place:'parroquia',place_id:353)

Place.create(name:'Chiquinquirá',type_place:'parroquia',place_id:353)

Place.create(name:'Francisco Eugenio Bustamante',type_place:'parroquia',place_id:353)

Place.create(name:'Idelfonzo Vásquez',type_place:'parroquia',place_id:353)

Place.create(name:'Juana de Ávila',type_place:'parroquia',place_id:353)

Place.create(name:'Luis Hurtado Higuera',type_place:'parroquia',place_id:353)

Place.create(name:'Manuel Dagnino',type_place:'parroquia',place_id:353)

Place.create(name:'Olegario Villalobos',type_place:'parroquia',place_id:353)

Place.create(name:'Raúl Leoni',type_place:'parroquia',place_id:353)

Place.create(name:'Santa Lucía',type_place:'parroquia',place_id:353)

Place.create(name:'Venancio Pulgar',type_place:'parroquia',place_id:353)

Place.create(name:'San Isidro',type_place:'parroquia',place_id:353)

Place.create(name:'Altagracia',type_place:'parroquia',place_id:354)

Place.create(name:'Faría',type_place:'parroquia',place_id:354)

Place.create(name:'Ana María Campos',type_place:'parroquia',place_id:354)

Place.create(name:'San Antonio',type_place:'parroquia',place_id:354)

Place.create(name:'San José',type_place:'parroquia',place_id:354)

Place.create(name:'Donaldo García',type_place:'parroquia',place_id:355)

Place.create(name:'El Rosario',type_place:'parroquia',place_id:355)

Place.create(name:'Sixto Zambrano',type_place:'parroquia',place_id:355)

Place.create(name:'San Francisco',type_place:'parroquia',place_id:356)

Place.create(name:'El Bajo',type_place:'parroquia',place_id:356)

Place.create(name:'Domitila Flores',type_place:'parroquia',place_id:356)

Place.create(name:'Francisco Ochoa',type_place:'parroquia',place_id:356)

Place.create(name:'Los Cortijos',type_place:'parroquia',place_id:356)

Place.create(name:'Marcial Hernández',type_place:'parroquia',place_id:356)

Place.create(name:'Santa Rita',type_place:'parroquia',place_id:357)

Place.create(name:'El Mene',type_place:'parroquia',place_id:357)

Place.create(name:'Pedro Lucas Urribarrí',type_place:'parroquia',place_id:357)

Place.create(name:'José Cenobio Urribarrí',type_place:'parroquia',place_id:357)

Place.create(name:'Rafael Maria Baralt',type_place:'parroquia',place_id:358)

Place.create(name:'Manuel Manrique',type_place:'parroquia',place_id:358)

Place.create(name:'Rafael Urdaneta',type_place:'parroquia',place_id:358)

Place.create(name:'Bobures',type_place:'parroquia',place_id:359)

Place.create(name:'Gibraltar',type_place:'parroquia',place_id:359)

Place.create(name:'Heras',type_place:'parroquia',place_id:359)

Place.create(name:'Monseñor Arturo Álvarez',type_place:'parroquia',place_id:359)

Place.create(name:'Rómulo Gallegos',type_place:'parroquia',place_id:359)

Place.create(name:'El Batey',type_place:'parroquia',place_id:359)

Place.create(name:'Rafael Urdaneta',type_place:'parroquia',place_id:360)

Place.create(name:'La Victoria',type_place:'parroquia',place_id:360)

Place.create(name:'Raúl Cuenca',type_place:'parroquia',place_id:360)

Place.create(name:'Sinamaica',type_place:'parroquia',place_id:346)

Place.create(name:'Alta Guajira',type_place:'parroquia',place_id:346)

Place.create(name:'Elías Sánchez Rubio',type_place:'parroquia',place_id:346)

Place.create(name:'Guajira',type_place:'parroquia',place_id:347)

Place.create(name:'Altagracia',type_place:'parroquia',place_id:361)

Place.create(name:'Antímano',type_place:'parroquia',place_id:361)

Place.create(name:'Caricuao',type_place:'parroquia',place_id:361)

Place.create(name:'Catedral',type_place:'parroquia',place_id:361)

Place.create(name:'Coche',type_place:'parroquia',place_id:361)

Place.create(name:'El Junquito',type_place:'parroquia',place_id:361)

Place.create(name:'El Paraíso',type_place:'parroquia',place_id:361)

Place.create(name:'El Recreo',type_place:'parroquia',place_id:361)

Place.create(name:'El Valle',type_place:'parroquia',place_id:361)

Place.create(name:'La Candelaria',type_place:'parroquia',place_id:361)

Place.create(name:'La Pastora',type_place:'parroquia',place_id:361)

Place.create(name:'La Vega',type_place:'parroquia',place_id:361)

Place.create(name:'Macarao',type_place:'parroquia',place_id:361)

Place.create(name:'San Agustín',type_place:'parroquia',place_id:361)

Place.create(name:'San Bernardino',type_place:'parroquia',place_id:361)

Place.create(name:'San José',type_place:'parroquia',place_id:361)

Place.create(name:'San Juan',type_place:'parroquia',place_id:361)

Place.create(name:'San Pedro',type_place:'parroquia',place_id:361)

Place.create(name:'Santa Rosalía',type_place:'parroquia',place_id:361)

Place.create(name:'Santa Teresa',type_place:'parroquia',place_id:361)

Place.create(name:'Sucre (Catia)',type_place:'parroquia',place_id:361)

Place.create(name:'23 de enero',type_place:'parroquia',place_id:361)

# -------------------------------------------------seeds grupo 5-------------------------------------------
puts "diner seeds"
Diner.create(name: 'angel', last_name: 'altuve', place_notif: false, favorite_notif: false, gender: 'M', birth_date: '27-01-1998',
    user_id: user_g9.id, place_id: 1234, start_price: 10, end_price: 30, identity_card: '1220522')
Diner.create(name: 'david', last_name: 'serrada', place_notif: false, favorite_notif: false, gender: 'M', birth_date: '27-02-1998',
user_id: user_g10.id, place_id: 1123, start_price: 10, end_price: 30, identity_card: '1220521')
comensal_g8 = Diner.create(name: 'luis', last_name: 'vandenbussche', place_notif: false, favorite_notif: false, gender: 'M', birth_date: '27-01-1998',
  user_id: user_g8.id, place_id: 1234, start_price: 10, end_price: 30, identity_card: '1220544')

KitchenType.create(name:'Comida tipica')

KitchenType.create(name:'Comida rapida')

KitchenType.create(name:'Comida espanola')

KitchenType.create(name:'Comida japonesa')

KitchenType.create(name:'Comida italiana')

KitchenType.create(name:'Comida china')

KitchenType.create(name:'Comida mexicana')

HistYumi.create(type_hist_yumis: 'bueno', quantity: 200, diner_id: 1)

HistYumi.create(type_hist_yumis: 'bueno', quantity: 300, diner_id: 1)

HistYumi.create(type_hist_yumis: 'bueno', quantity: 400, diner_id: 1)
#fin de hist_yumis
#inserts para distrito capital
Restaurant.create(name:'El cachapero',address:'Distrito Capital, municipio libertador, parroquia de Altagracia',map_location:nil,zip_code:'1021',capacity:10,description:'un local que sirve cachapas',rif:'J-01234567-8',start_time:'9:00 am',end_time:'4:00 pm',particular:false,user_id:1,place_id:1478)

Restaurant.create(name:'El arepero',address:'Distrito Capital, municipio libertador, parroquia de Antímano',map_location:nil,zip_code:'1022',capacity:10,description:'un local que sirve arepas',rif:'J-01234569-8',start_time:'9:00 am',end_time:'4:00 pm',particular:false,user_id:2,place_id:1479)

Restaurant.create(name:'El empanadero',address:'Distrito Capital, municipio libertador, parroquia de Caricuao',map_location:nil,zip_code:'1023',capacity:10,description:'un local que sirve empanadas',rif:'J-01234561-8',start_time:'9:00 am',end_time:'4:00 pm',particular:false,user_id:3,place_id:1480)
#inserts de yaracui
Restaurant.create(name:'Choriexpress',address:'Estado Yaracui, municipio Sucre, parroquia Sucre',map_location:nil,zip_code:'1024',capacity:15,description:'un local que sirve choripanes',rif:'J-11234567-8',start_time:'9:00 am',end_time:'4:00 pm',particular:false,user_id:4,place_id:1367)

Restaurant.create(name:'El aliento del llano ',address:'Estado Yaracui, municipio Bolivar, parroquia Bolivar',map_location:nil,zip_code:'1025',capacity:15,description:'un local que sirve comida llanera',rif:'J-01234067-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:5,place_id:1351)
#inserts para tachira
Restaurant.create(name:'Casa Urrutia',address:'Estado Tachira, municipio san cristobal, parroquia la concordia',map_location:nil,zip_code:1026,capacity:20,description:'restaurante que sirve comida espanola',rif:'J-41234567-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:6,place_id:1230)

Restaurant.create(name:'Bonsai Sushi',address:'Estado Tachira, municipio san cristobal, parroquia san juan bautista',map_location:nil,zip_code:1027,capacity:10,description:'local que vende comida japonesa, con especialidad en sushi',rif:'J-01234767-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:7,place_id:1231)

Restaurant.create(name:'Roma Mia',address:'Estado Tachira, municipio libertador, parroquia pedro maria montanes',map_location:nil,zip_code:1028,capacity:20,description:'restaurante que sirve comida italiana',rif:'J-51234567-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:8,place_id:1232)

Restaurant.create(name:'Salon Canton',address:'Estado Tachira, municipio libertador, parroquia san sebastian',map_location:nil,zip_code:1029,capacity:20,description:'restaurante que sirve comida china',rif:'J-81234567-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:9,place_id:1233)
#inserts de portuguesa
Restaurant.create(name:'Pancho Villa Tacos',address:'Estado portuguesa, municipio Sucre, parroquia Sucre',map_location:nil,zip_code:1030,capacity:10,description:'local que vende comida mexicana',rif:'J-05234567-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:10,place_id:1113)

Photo.create(photo:'https://live.staticflickr.com/65535/49179911186_db457345a9_o_d.jpg',restaurant_id:1)#el cachapero

Photo.create(photo:'https://live.staticflickr.com/65535/49179422228_380acb378e_b_d.jpg',restaurant_id:2)#el arepero

Photo.create(photo:'https://live.staticflickr.com/65535/49180119892_69979525a4_b_d.jpg',restaurant_id:3)#el empanadero

Photo.create(photo:'https://live.staticflickr.com/65535/49179913911_3e1800ab8f_b_d.jpg',restaurant_id:4)#choriexpress

Photo.create(photo:'https://live.staticflickr.com/65535/49179915091_ef664a5622_o_d.jpg',restaurant_id:5)#el aliento del llano

Photo.create(photo:'https://live.staticflickr.com/65535/49180091673_006468e864_b_d.jpg',restaurant_id:6)#casa urrutia

Photo.create(photo:'https://live.staticflickr.com/65535/49180580971_171331169a_o_d.jpg',restaurant_id:7)#bonsai sushi

Photo.create(photo:'https://live.staticflickr.com/65535/49180581471_ac6ac975b9_o_d.jpg',restaurant_id:8)#roma mia

Photo.create(photo:'https://live.staticflickr.com/65535/49180581976_af875fa5be_o_d.jpg',restaurant_id:9)#salon canton

Photo.create(photo:'https://live.staticflickr.com/65535/49180794812_cc74b976da_o_d.jpg',restaurant_id:10)#Pancho villa tacos

Promo.create(restaurant_id: 1, name: 'promo1', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 2, name: 'promo2', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 3, name: 'promo3', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 4, name: 'promo4', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 5, name: 'promo5', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 6, name: 'promo6', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 7, name: 'promo7', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 8, name: 'promo8', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 9, name: 'promo9', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 10, name: 'promo10', promo_type: '2x1', description: 'buena promo', yumis: false)

MenuType.create(name:'Individual', restaurant_id: 1)

MenuType.create(name:'Individual', restaurant_id: 2)

MenuType.create(name:'Unico', restaurant_id: 3)

MenuType.create(name:'Unico', restaurant_id: 4)

MenuType.create(name:'Ejecutivo', restaurant_id: 5)

MenuType.create(name:'Familiar', restaurant_id: 1)

MenuType.create(name:'Familiar', restaurant_id: 2)

MenuType.create(name:'Unico', restaurant_id: 6)

MenuType.create(name:'Unico', restaurant_id: 7)

MenuType.create(name:'Unico', restaurant_id: 8)

MenuType.create(name:'Unico', restaurant_id: 9)

MenuType.create(name:'Unico', restaurant_id: 10)

#platos de el cachapero
Plate.create(name:'Cachapa con queso', description:'una cachapa rellena con queso de mano', price: 2, menu_type_id:1)

Plate.create(name:'Cachapa con queso y jamon', description:'una cachapa rellena con queso de mano y jamon de pierna', price: 3, menu_type_id:1)

Plate.create(name:'Maltin polar', description:'una botella de maltin polar', price: 1, menu_type_id:1)

Plate.create(name:'Cachapa con queso x2', description:'dos cachapas rellenas con queso de mano', price: 4, menu_type_id:6)

Plate.create(name:'Cachapa con queso y jamon x2', description:'dos cachapas rellenas con queso de mano y jamon de pierna', price: 6, menu_type_id:6)

Plate.create(name:'Una y una', description:'una cachapa rellena con queso de mano y jamon de pierna y una cachapa rellena de queso de mano', price: 4.5, menu_type_id:6)

Plate.create(name:'Maltin polar x2', description:'dos botellas de maltin polar', price: 2, menu_type_id:6)
#platos del arepero
Plate.create(name:'Arepa rellena 1 contorno', description:'una arepa rellena con 1 contorno a eleccion', price: 2, menu_type_id:2)

Plate.create(name:'Arepa rellena 2 contorno', description:'una arepa rellenas con 2 contornos a eleccion', price: 2.5, menu_type_id:2)

Plate.create(name:'Maltin polar', description:'una botella de maltin polar', price: 1, menu_type_id:2)

Plate.create(name:'Arepa rellena 1 contorno x2', description:'dos arepas rellenas con 1 contorno a eleccion', price: 4, menu_type_id:7)

Plate.create(name:'Arepa rellena 2 contorno x2', description:'dos arepas rellenas con 2 contornos a eleccion', price: 5, menu_type_id:7)

Plate.create(name:'Maltin polar x2', description:'dos botellas de maltin polar', price: 2, menu_type_id:7)
#platos del empanadero
Plate.create(name:'Empanada de queso', description:'una empanada rellena de queso', price: 3, menu_type_id:3)

Plate.create(name:'Empanada de carne', description:'una empanada rellena de carne', price: 5, menu_type_id:3)

Plate.create(name:'Empanada de pollo', description:'una empanada rellena de pollo', price: 4, menu_type_id:3)

Plate.create(name:'Maltin polar', description:'una botella de maltin polar', price: 1, menu_type_id:3)

Plate.create(name:'Adereso guasacaca', description:'una porcion de guasacaca para untar en la empanada', price: 2, menu_type_id:3)

Plate.create(name:'Adereso picante', description:'una porcion de picante para untar en la empanada', price: 2, menu_type_id:3)
#platos de choriexpress
Plate.create(name:'Choripan regular', description:'choripan relleno con una salsa y papas fritas', price: 3, menu_type_id:4)

Plate.create(name:'Choripan especial', description:'choripan relleno con dos salsas, huevo frito y papas fritas', price: 4, menu_type_id:4)

Plate.create(name:'Choripan Express', description:'choripan relleno con dos salsas, huevo frito, tocineta y papas fritas', price: 5, menu_type_id:4)

Plate.create(name:'Refresco lata', description:'una lata de refresco', price: 2, menu_type_id:4)

Plate.create(name:'Choripan regular', description:'choripan relleno con una salsa y papas fritas', price: 3, menu_type_id:4)
#platos del aliento del llano
Plate.create(name:'Desayuno llanero', description:'consiste de 2 arepas de harnia, huevo en revoltillo, caraota y platano en tajadas fritas', price: 6, menu_type_id:5)

Plate.create(name:'Arroz con pollo', description:'consiste de arroz cocinado con pedazos de pollo, vegetales y platano en tajadas fritas', price: 6, menu_type_id:5)

Plate.create(name:'Jugo de fruta mediano', description:'un batido de fruta a eleccion cuando llegue al establecimiento', price: 2, menu_type_id:5)
#platos de la casa urrutia
Plate.create(name:'Paella', description:'arroz con ostraz',price:6,menu_type_id:8)

Plate.create(name:'Tortilla espanola', description:'tortilla a base papa y vegetales verdes',price:4,menu_type_id:8)

Plate.create(name:'Jugo natural', description:'batido de fruta escogido en el establecimiento',price:2,menu_type_id:8)
#platos de bonsai sushi
Plate.create(name:'Roll teriyaki', description:'pezcado crudo envuelto en arroz y especias especificas',price:6,menu_type_id:9)

Plate.create(name:'Sopa de miso', description:'sopa usando vegetales',price:5,menu_type_id:9)

Plate.create(name:'Bowl de ramen', description:'sopa con fideos',price:6,menu_type_id:9)
#platos de roma mia
Plate.create(name:'Pizza margarita', description:'pizza con tomate y queso',price:8,menu_type_id:10)

Plate.create(name:'Pasta puttanesca', description:'pasta con salsa putanesca',price:7,menu_type_id:10)

Plate.create(name:'Cartoccio de carbonara', description:'una especie de pizza volteada, rellena con salsa carbonara',price:10,menu_type_id:10)
#platos de salon canton
Plate.create(name:'Arroz chino', description:'arroz hecho con aceite y muchos acompanantes',price:7,menu_type_id:11)

Plate.create(name:'Lumpias', description:'un set de 6 lumpias',price:8,menu_type_id:11)

Plate.create(name:'Pollito verde', description:'el que entendio, entendio. Att: fung',price:4,menu_type_id:11)
#platos de pancho villa tacos
Plate.create(name:'Tacos', description:'un set de 2 tacos por persona',price:5,menu_type_id:12)

Plate.create(name:'Burritos', description:'un set de 3 burritos',price:7,menu_type_id:12)

Plate.create(name:'Enchiladas', description:'un set de 4 enchiladas',price:9,menu_type_id:12)
#reservas de cachapero
Reservation.create(reservation_date:'2020/24/2', people_num:1,status:nil,promo_id:1,hist_yumi_id:1,restaurant_id:1,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:1,hist_yumi_id:1,restaurant_id:1,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:1,hist_yumi_id:1,restaurant_id:1,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:4,status:nil,promo_id:1,hist_yumi_id:1,restaurant_id:1,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:6,status:nil,promo_id:1,hist_yumi_id:1,restaurant_id:1,diner_id:1)
#reservas de arepero
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:2,hist_yumi_id:1,restaurant_id:2,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:5,status:nil,promo_id:2,hist_yumi_id:1,restaurant_id:2,diner_id:1)
#reservas de empanadero
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:3,hist_yumi_id:1,restaurant_id:3,diner_id:1)
#reservas de choriexpress
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:4,hist_yumi_id:1,restaurant_id:4,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:3,status:nil,promo_id:4,hist_yumi_id:1,restaurant_id:4,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:1,status:nil,promo_id:4,hist_yumi_id:2,restaurant_id:4,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:4,hist_yumi_id:2,restaurant_id:4,diner_id:1)
#reservas de aliento del llano
Reservation.create(reservation_date:'2020/24/2', people_num:5,status:nil,promo_id:5,hist_yumi_id:2,restaurant_id:5,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:6,status:nil,promo_id:5,hist_yumi_id:2,restaurant_id:5,diner_id:1)
#reservas de casa urrutia
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:6,hist_yumi_id:2,restaurant_id:6,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:3,status:nil,promo_id:6,hist_yumi_id:2,restaurant_id:6,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:6,hist_yumi_id:2,restaurant_id:6,diner_id:1)
#reservas de bonsai sushi
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:7,hist_yumi_id:2,restaurant_id:7,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:1,status:nil,promo_id:7,hist_yumi_id:2,restaurant_id:7,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:3,status:nil,promo_id:7,hist_yumi_id:2,restaurant_id:7,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:4,status:nil,promo_id:7,hist_yumi_id:3,restaurant_id:7,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:7,hist_yumi_id:3,restaurant_id:7,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:1,status:nil,promo_id:7,hist_yumi_id:3,restaurant_id:7,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:4,status:nil,promo_id:7,hist_yumi_id:3,restaurant_id:7,diner_id:1)
#reservas de roma mia
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:8,hist_yumi_id:3,restaurant_id:8,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:3,status:nil,promo_id:8,hist_yumi_id:3,restaurant_id:8,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:8,hist_yumi_id:3,restaurant_id:8,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:3,status:nil,promo_id:8,hist_yumi_id:3,restaurant_id:8,diner_id:1)
#reservas de salon canton
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:9,hist_yumi_id:3,restaurant_id:9,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:4,status:nil,promo_id:9,hist_yumi_id:3,restaurant_id:9,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:9,hist_yumi_id:3,restaurant_id:9,diner_id:1)
#reservas de pancho villa tacos
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:10,hist_yumi_id:3,restaurant_id:10,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:10,hist_yumi_id:3,restaurant_id:10,diner_id:1)
#comentarios de el cachapero
Comment.create(kitchen_rating:4.5,ambient_rating:4.5,service_rating:4.5,description:'el ambiente me parecio fantastico, la comida brutal y el servico de calidad :D',reservation_id:1)

Comment.create(kitchen_rating:4,ambient_rating:5,service_rating:3.5,description:'la comida estuvo decente, el ambiente me encanto y el servicio estuvo decente',reservation_id:2)

Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'La experiencia de comer cachapas mas satisfactoria de mi vida', reservation_id:3)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'en general, una experiencia comoda', reservation_id:4)

Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'un gran servicio para comer cachapas', reservation_id:5)
#comentarios de el arepero
Comment.create(kitchen_rating:3.5, ambient_rating:3.5, service_rating:3.5, description:'unas buenas arepas y un buen establecimiento de arepas', reservation_id:6)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'que buenas arepas para empezar el dia', reservation_id:7)
#comentarios de el empanadero
Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelentes empanadas', reservation_id:8)
#comentarios de choriexpress
Comment.create(kitchen_rating:3.5, ambient_rating:3, service_rating:2, description:'el servicio fue lento, la comida apenas valio la pena y el ambiente fue regular', reservation_id:9)

Comment.create(kitchen_rating:3.5, ambient_rating:3.5, service_rating:3.5, description:'un buen lugar para comer choripan cuando el antojo pega', reservation_id:10)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'que buen chorizo', reservation_id:11)

Comment.create(kitchen_rating:3, ambient_rating:3, service_rating:3, description:'un lugar pasable, con servicio pasable', reservation_id:12)
#comentarios de aliento del llano
Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'Que gran servicio y que comida llanera tan Buena', reservation_id:13)

Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:14)
#comentarios de casa urrutia
Comment.create(kitchen_rating:5, ambient_rating:4.5, service_rating:4, description:'la paella estuvo divina', reservation_id:15)

Comment.create(kitchen_rating:4, ambient_rating:3.5, service_rating:4.5, description:'buena tortilla y buen servicio', reservation_id:16)

Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:17)
#comentarios de bonsai sushi
Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:18)

Comment.create(kitchen_rating:4, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento y servicio', reservation_id:19)

Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:20)

Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'servicio perfecto', reservation_id:21)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:3, description:'el servicio estuvo lento y me trajeron algo que no pedi', reservation_id:22)

Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:23)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:24)
#comentarios de roma mia
Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:25)

Comment.create(kitchen_rating:3.5, ambient_rating:3.5, service_rating:3.5, description:'la experiencia estubo Buena', reservation_id:26)

Comment.create(kitchen_rating:3, ambient_rating:3.5, service_rating:3, description:'la comida no se sintio como italiana de verdad y el servicio estaba telible', reservation_id:27)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:28)
#comentarios de salon canton
Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:29)

Comment.create(kitchen_rating:3, ambient_rating:3, service_rating:3, description:'el pollo no estaba suficientemente verde', reservation_id:30)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:31)
#comentarios de pancho villa tacos
Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:32)

Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'excelente establecimiento', reservation_id:33)
#fin de inserts para distrito capital
#inserts para zulia
Restaurant.create(name:'El cachapero',address:'Estado Zulia, municipio maracaibo, parroquia de Antonio Borjas Romero',map_location:nil,zip_code:'1021',capacity:10,description:'un local que sirve cachapas',rif:'J-01236517-8',start_time:'9:00 am',end_time:'4:00 pm',particular:false,user_id:11,place_id:1426)

Restaurant.create(name:'El arepero',address:'Estado Zulia, municipio maracaibo, parroquia Bolivar',map_location:nil,zip_code:'1022',capacity:10,description:'un local que sirve arepas',rif:'J-01237517-8',start_time:'9:00 am',end_time:'4:00 pm',particular:false,user_id:12,place_id:1427)

Restaurant.create(name:'El empanadero',address:'Estado Zulia, municipio maracaibo, parroquia de Cacique Mara',map_location:nil,zip_code:'1023',capacity:10,description:'un local que sirve empanadas',rif:'J-01238517-8',start_time:'9:00 am',end_time:'4:00 pm',particular:false,user_id:13,place_id:1428)
#inserts para miranda
Restaurant.create(name:'Choriexpress',address:'Estado Miranda, municipio chachao, parroquia chacao',map_location:nil,zip_code:'1024',capacity:15,description:'un local que sirve choripanes',rif:'J-01239517-8',start_time:'9:00 am',end_time:'4:00 pm',particular:false,user_id:14,place_id:980)

Restaurant.create(name:'El aliento del llano ',address:'Estado Miranda, municipio baruta, parroquia del Cafetal',map_location:nil,zip_code:'1025',capacity:15,description:'un local que sirve comida llanera',rif:'J-01231517-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:15,place_id:972)

Restaurant.create(name:'Casa Urrutia',address:'Estado Miranda, municipio baruta, parroquia de las Minas',map_location:nil,zip_code:1026,capacity:20,description:'restaurante que sirve comida espanola',rif:'J-01211517-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:16,place_id:973)
#inserts para Merida
Restaurant.create(name:'Bonsai Sushi',address:'Estado Merida, municipio sucre, parroquia la Trampa',map_location:nil,zip_code:1027,capacity:10,description:'local que vende comida japonesa, con especialidad en sushi',rif:'J-01221517-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:17,place_id:949)

Restaurant.create(name:'Roma Mia',address:'Estado Merida, municipio sucre, parroquia lagunilla',map_location:nil,zip_code:1028,capacity:20,description:'restaurante que sirve comida italiana',rif:'J-11241717-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:18,place_id:948)

Restaurant.create(name:'Salon Canton',address:'Estado Merida, municipio rangel, parroquia la Toma',map_location:nil,zip_code:1029,capacity:20,description:'restaurante que sirve comida china',rif:'J-01241517-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:19,place_id:939)

Restaurant.create(name:'Pancho Villa Tacos',address:'Estado Merida, municipio rangel, parroquia Cacute',map_location:nil,zip_code:1030,capacity:10,description:'local que vende comida mexicana',rif:'J-09241517-8',start_time:'9:00 am',end_time:'4:00 pm',particular:true,user_id:20,place_id:938)
#fin de restaurantes
#inicio de fotos de restaurantes
Photo.create(photo:'https://live.staticflickr.com/65535/49179911186_db457345a9_o_d.jpg',restaurant_id:11)
#el cachapero
Photo.create(photo:'https://live.staticflickr.com/65535/49179422228_380acb378e_b_d.jpg',restaurant_id:12)
#el arepero
Photo.create(photo:'https://live.staticflickr.com/65535/49180119892_69979525a4_b_d.jpg',restaurant_id:13)
#el empanadero
Photo.create(photo:'https://live.staticflickr.com/65535/49179913911_3e1800ab8f_b_d.jpg',restaurant_id:14)
#choriexpress
Photo.create(photo:'https://live.staticflickr.com/65535/49179915091_ef664a5622_o_d.jpg',restaurant_id:15)
#el aliento del llano
Photo.create(photo:'https://live.staticflickr.com/65535/49180091673_006468e864_b_d.jpg',restaurant_id:16)
#casa urrutia
Photo.create(photo:'https://live.staticflickr.com/65535/49180580971_171331169a_o_d.jpg',restaurant_id:17)
#bonsai sushi
Photo.create(photo:'https://live.staticflickr.com/65535/49180581471_ac6ac975b9_o_d.jpg',restaurant_id:18)
#roma mia
Photo.create(photo:'https://live.staticflickr.com/65535/49180581976_af875fa5be_o_d.jpg',restaurant_id:19)
#salon canto
Photo.create(photo:'https://live.staticflickr.com/65535/49180794812_cc74b976da_o_d.jpg',restaurant_id:20)
#Pancho villa tacos
#fin de fotos
#inicio de promos de grupo 5
Promo.create(restaurant_id: 11, name: 'promo1', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 12, name: 'promo2', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 13, name: 'promo3', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 14, name: 'promo4', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 15, name: 'promo5', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 16, name: 'promo6', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 17, name: 'promo7', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 18, name: 'promo8', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 19, name: 'promo9', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 20, name: 'promo10', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 21, name: 'promo11', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 22, name: 'promo12', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 23, name: 'promo13', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 24, name: 'promo14', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 25, name: 'promo15', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 26, name: 'promo16', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 27, name: 'promo17', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 28, name: 'promo18', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 29, name: 'promo19', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 30, name: 'promo20', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 31, name: 'promo20', promo_type: '2x1', description: 'buena promo', yumis: false)

Promo.create(restaurant_id: 32, name: 'promo20', promo_type: '2x1', description: 'buena promo', yumis: false)
#fin de promos de grupo 5
#inicio de calendarios grupo 5
Calendar.create(final_date: '2020/2/1')

Calendar.create(final_date: '2020/2/2')

Calendar.create(final_date: '2020/2/3')

Calendar.create(final_date: '2020/2/4')

Calendar.create(final_date: '2020/2/5')

Calendar.create(final_date: '2020/2/6')

Calendar.create(final_date: '2020/2/7')

Calendar.create(final_date: '2020/2/8')

Calendar.create(final_date: '2020/2/9')

Calendar.create(final_date: '2020/2/10')

Calendar.create(final_date: '2020/2/11')

Calendar.create(final_date: '2020/2/12')

Calendar.create(final_date: '2020/2/13')

Calendar.create(final_date: '2020/2/14')

Calendar.create(final_date: '2020/2/15')

Calendar.create(final_date: '2020/2/16')

Calendar.create(final_date: '2020/2/17')

Calendar.create(final_date: '2020/2/18')

Calendar.create(final_date: '2020/2/19')

Calendar.create(final_date: '2020/2/7')

Calendar.create(final_date: '2020/2/8')

Calendar.create(final_date: '2020/2/9')

Calendar.create(final_date: '2020/2/10')

Calendar.create(final_date: '2020/2/11')

Calendar.create(final_date: '2020/2/12')

Calendar.create(final_date: '2020/2/13')

Calendar.create(final_date: '2020/2/14')

Calendar.create(final_date: '2020/2/15')

Calendar.create(final_date: '2020/2/16')

Calendar.create(final_date: '2020/2/17')

Calendar.create(final_date: '2020/2/18')

Calendar.create(final_date: '2020/2/20')
#fin de calendarios grupo 5
#inicio de asociacion de calendarios con promos
PromoCalendar.create(id: 1,promo_id: 1, calendar_id: 1)

PromoCalendar.create(id: 2,promo_id: 2, calendar_id: 2)

PromoCalendar.create(id: 3,promo_id: 3, calendar_id: 3)

PromoCalendar.create(id: 4,promo_id: 4, calendar_id: 4)

PromoCalendar.create(id: 5,promo_id: 5, calendar_id: 5)

PromoCalendar.create(id: 6,promo_id: 6, calendar_id: 6)

PromoCalendar.create(id: 7,promo_id: 7, calendar_id: 7)

PromoCalendar.create(id: 8,promo_id: 8, calendar_id: 8)

PromoCalendar.create(id: 9,promo_id: 9, calendar_id: 9)

PromoCalendar.create(id: 10,promo_id: 10, calendar_id: 10)

PromoCalendar.create(id: 11,promo_id: 11, calendar_id: 11)

PromoCalendar.create(id: 12,promo_id: 12, calendar_id: 12)

PromoCalendar.create(id: 13,promo_id: 13, calendar_id: 13)

PromoCalendar.create(id: 14,promo_id: 14, calendar_id: 14)

PromoCalendar.create(id: 15,promo_id: 15, calendar_id: 15)

PromoCalendar.create(id: 16,promo_id: 16, calendar_id: 16)

PromoCalendar.create(id: 17,promo_id: 17, calendar_id: 17)

PromoCalendar.create(id: 18,promo_id: 18, calendar_id: 18)

PromoCalendar.create(id: 19,promo_id: 19, calendar_id: 19)

PromoCalendar.create(id: 20,promo_id: 20, calendar_id: 20)

PromoCalendar.create(id: 21,promo_id: 21, calendar_id: 21)

PromoCalendar.create(id: 22,promo_id: 22, calendar_id: 22)

PromoCalendar.create(id: 23,promo_id: 23, calendar_id: 23)

PromoCalendar.create(id: 24,promo_id: 24, calendar_id: 24)

PromoCalendar.create(id: 25,promo_id: 25, calendar_id: 25)

PromoCalendar.create(id: 26,promo_id: 26, calendar_id: 26)

PromoCalendar.create(id: 27,promo_id: 27, calendar_id: 27)

PromoCalendar.create(id: 28,promo_id: 28, calendar_id: 28)

PromoCalendar.create(id: 29,promo_id: 29, calendar_id: 29)

PromoCalendar.create(id: 30,promo_id: 30, calendar_id: 30)

PromoCalendar.create(id: 31,promo_id: 31, calendar_id: 31)

PromoCalendar.create(id: 32,promo_id: 32, calendar_id: 32)
#fin de la asociacion de calendarios con promos
#inicio de tipos de menu
MenuType.create(name:'Individual', restaurant_id: 11)

MenuType.create(name:'Individual', restaurant_id: 12)

MenuType.create(name:'Unico', restaurant_id: 13)

MenuType.create(name:'Unico', restaurant_id: 14)

MenuType.create(name:'Ejecutivo', restaurant_id: 15)

MenuType.create(name:'Familiar', restaurant_id: 11)

MenuType.create(name:'Familiar', restaurant_id: 12)

MenuType.create(name:'Unico', restaurant_id: 16)

MenuType.create(name:'Unico', restaurant_id: 17)

MenuType.create(name:'Unico', restaurant_id: 18)

MenuType.create(name:'Unico', restaurant_id: 19)

MenuType.create(name:'Unico', restaurant_id: 20)
#fin de tipo de menu
#inicio de platos
#platos de el cachapero
Plate.create(name:'Cachapa con queso', description:'una cachapa rellena con queso de mano', price: 2, menu_type_id:13)

Plate.create(name:'Cachapa con queso y jamon', description:'una cachapa rellena con queso de mano y jamon de pierna', price: 3, menu_type_id:13)

Plate.create(name:'Maltin polar', description:'una botella de maltin polar', price: 1, menu_type_id:13)

Plate.create(name:'Cachapa con queso x2', description:'dos cachapas rellenas con queso de mano', price: 4, menu_type_id:18)

Plate.create(name:'Cachapa con queso y jamon x2', description:'dos cachapas rellenas con queso de mano y jamon de pierna', price: 6, menu_type_id:18)

Plate.create(name:'Una y una', description:'una cachapa rellena con queso de mano y jamon de pierna y una cachapa rellena de queso de mano', price: 4.5, menu_type_id:18)

Plate.create(name:'Maltin polar x2', description:'dos botellas de maltin polar', price: 2, menu_type_id:18)
#platos del arepero
Plate.create(name:'Arepa rellena 1 contorno', description:'una arepa rellena con 1 contorno a eleccion', price: 2, menu_type_id:14)

Plate.create(name:'Arepa rellena 2 contorno', description:'una arepa rellenas con 2 contornos a eleccion', price: 2.5, menu_type_id:14)

Plate.create(name:'Maltin polar', description:'una botella de maltin polar', price: 1, menu_type_id:14)

Plate.create(name:'Arepa rellena 1 contorno x2', description:'dos arepas rellenas con 1 contorno a eleccion', price: 4, menu_type_id:19)

Plate.create(name:'Arepa rellena 2 contorno x2', description:'dos arepas rellenas con 2 contornos a eleccion', price: 5, menu_type_id:19)

Plate.create(name:'Maltin polar x2', description:'dos botellas de maltin polar', price: 2, menu_type_id:19)
#platos del empanadero
Plate.create(name:'Empanada de queso', description:'una empanada rellena de queso', price: 3, menu_type_id:15)

Plate.create(name:'Empanada de carne', description:'una empanada rellena de carne', price: 5, menu_type_id:15)

Plate.create(name:'Empanada de pollo', description:'una empanada rellena de pollo', price: 4, menu_type_id:15)

Plate.create(name:'Maltin polar', description:'una botella de maltin polar', price: 1, menu_type_id:15)

Plate.create(name:'Adereso guasacaca', description:'una porcion de guasacaca para untar en la empanada', price: 2, menu_type_id:15)

Plate.create(name:'Adereso picante', description:'una porcion de picante para untar en la empanada', price: 2, menu_type_id:15)
#platos de choriexpress
Plate.create(name:'Choripan regular', description:'choripan relleno con una salsa y papas fritas', price: 3, menu_type_id:16)

Plate.create(name:'Choripan especial', description:'choripan relleno con dos salsas, huevo frito y papas fritas', price: 4, menu_type_id:16)

Plate.create(name:'Choripan Express', description:'choripan relleno con dos salsas, huevo frito, tocineta y papas fritas', price: 5, menu_type_id:16)

Plate.create(name:'Refresco lata', description:'una lata de refresco', price: 2, menu_type_id:16)

Plate.create(name:'Choripan regular', description:'choripan relleno con una salsa y papas fritas', price: 3, menu_type_id:16)
#platos del aliento del llano
Plate.create(name:'Desayuno llanero', description:'consiste de 2 arepas de harnia, huevo en revoltillo, caraota y platano en tajadas fritas', price: 6, menu_type_id:17)

Plate.create(name:'Arroz con pollo', description:'consiste de arroz cocinado con pedazos de pollo, vegetales y platano en tajadas fritas', price: 6, menu_type_id:17)

Plate.create(name:'Jugo de fruta mediano', description:'un batido de fruta a eleccion cuando llegue al establecimiento', price: 2, menu_type_id:17)
#platos de la casa urrutia
Plate.create(name:'Paella', description:'arroz con ostraz',price:6,menu_type_id:20)

Plate.create(name:'Tortilla espanola', description:'tortilla a base papa y vegetales verdes',price:4,menu_type_id:20)

Plate.create(name:'Jugo natural', description:'batido de fruta escogido en el establecimiento',price:2,menu_type_id:20)
#platos de bonsai sushi
Plate.create(name:'Roll teriyaki', description:'pezcado crudo envuelto en arroz y especias especificas',price:6,menu_type_id:21)

Plate.create(name:'Sopa de miso', description:'sopa usando vegetales',price:5,menu_type_id:21)

Plate.create(name:'Bowl de ramen', description:'sopa con fideos',price:6,menu_type_id:21)
#platos de roma mia
Plate.create(name:'Pizza margarita', description:'pizza con tomate y queso',price:8,menu_type_id:22)

Plate.create(name:'Pasta puttanesca', description:'pasta con salsa putanesca',price:7,menu_type_id:22)

Plate.create(name:'Cartoccio de carbonara', description:'una especie de pizza volteada, rellena con salsa carbonara',price:10,menu_type_id:22)
#platos de salon canton
Plate.create(name:'Arroz chino', description:'arroz hecho con aceite y muchos acompanantes',price:7,menu_type_id:23)

Plate.create(name:'Lumpias', description:'un set de 6 lumpias',price:8,menu_type_id:23)

Plate.create(name:'Pollito verde', description:'el que entendio, entendio. Att: fung',price:4,menu_type_id:23)
#platos de pancho villa tacos
Plate.create(name:'Tacos', description:'un set de 2 tacos por persona',price:5,menu_type_id:24)

Plate.create(name:'Burritos', description:'un set de 3 burritos',price:7,menu_type_id:24)

Plate.create(name:'Enchiladas', description:'un set de 4 enchiladas',price:9,menu_type_id:24)
#fin de los platos
#inicio de las reservas
#reservas de cachapero
Reservation.create(reservation_date:'2020/24/2', people_num:1,status:nil,promo_id:11,hist_yumi_id:1,restaurant_id:11,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:11,hist_yumi_id:1,restaurant_id:11,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:11,hist_yumi_id:1,restaurant_id:11,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:4,status:nil,promo_id:11,hist_yumi_id:1,restaurant_id:11,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:6,status:nil,promo_id:11,hist_yumi_id:1,restaurant_id:11,diner_id:1)
#reservas de arepero
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:12,hist_yumi_id:1,restaurant_id:12,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:5,status:nil,promo_id:12,hist_yumi_id:1,restaurant_id:12,diner_id:1)
#reservas de empanadero
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:13,hist_yumi_id:1,restaurant_id:13,diner_id:1)
#reservas de choriexpress
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:14,hist_yumi_id:1,restaurant_id:14,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:3,status:nil,promo_id:14,hist_yumi_id:1,restaurant_id:14,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:1,status:nil,promo_id:14,hist_yumi_id:1,restaurant_id:14,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:14,hist_yumi_id:1,restaurant_id:14,diner_id:1)
#reservas de aliento del llano
Reservation.create(reservation_date:'2020/24/2', people_num:5,status:nil,promo_id:15,hist_yumi_id:1,restaurant_id:15,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:6,status:nil,promo_id:15,hist_yumi_id:2,restaurant_id:15,diner_id:1)
#reservas de casa urrutia
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:16,hist_yumi_id:2,restaurant_id:16,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:3,status:nil,promo_id:16,hist_yumi_id:2,restaurant_id:16,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:16,hist_yumi_id:2,restaurant_id:16,diner_id:1)
#reservas de bonsai sushi
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:17,hist_yumi_id:2,restaurant_id:17,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:1,status:nil,promo_id:17,hist_yumi_id:2,restaurant_id:17,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:3,status:nil,promo_id:17,hist_yumi_id:2,restaurant_id:17,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:4,status:nil,promo_id:17,hist_yumi_id:2,restaurant_id:17,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:17,hist_yumi_id:2,restaurant_id:17,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:1,status:nil,promo_id:17,hist_yumi_id:2,restaurant_id:17,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:4,status:nil,promo_id:17,hist_yumi_id:2,restaurant_id:17,diner_id:1)
#reservas de roma mia
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:18,hist_yumi_id:2,restaurant_id:18,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:3,status:nil,promo_id:18,hist_yumi_id:2,restaurant_id:18,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:18,hist_yumi_id:3,restaurant_id:18,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:3,status:nil,promo_id:18,hist_yumi_id:3,restaurant_id:18,diner_id:1)
#reservas de salon canton
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:19,hist_yumi_id:3,restaurant_id:19,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:4,status:nil,promo_id:19,hist_yumi_id:3,restaurant_id:19,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:19,hist_yumi_id:3,restaurant_id:19,diner_id:1)
#reservas de pancho villa tacos
Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)

Reservation.create(reservation_date:'2020/24/2', people_num:2,status:nil,promo_id:20,hist_yumi_id:3,restaurant_id:20,diner_id:1)
#fin de reservasiones
#inicio de comentarios de las reservaciones
#comentarios de el cachapero
Comment.create(kitchen_rating:4.5,ambient_rating:4.5,service_rating:4.5,description:'el ambiente me parecio fantastico, la comida brutal y el servico de calidad :D',reservation_id:34)

Comment.create(kitchen_rating:4,ambient_rating:5,service_rating:3.5,description:'la comida estuvo decente, el ambiente me encanto y el servicio estuvo decente',reservation_id:35)

Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'La experiencia de comer cachapas mas satisfactoria de mi vida', reservation_id:36)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'en general, una experiencia comoda', reservation_id:37)

Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'un gran servicio para comer cachapas', reservation_id:38)
#comentarios de el arepero
Comment.create(kitchen_rating:3.5, ambient_rating:3.5, service_rating:3.5, description:'unas buenas arepas y un buen establecimiento de arepas', reservation_id:39)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'que buenas arepas para empezar el dia', reservation_id:40)
#comentarios de el empanadero
Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelentes empanadas', reservation_id:41)
#comentarios de choriexpress
Comment.create(kitchen_rating:3.5, ambient_rating:3, service_rating:2, description:'el servicio fue lento, la comida apenas valio la pena y el ambiente fue regular', reservation_id:42)

Comment.create(kitchen_rating:3.5, ambient_rating:3.5, service_rating:3.5, description:'un buen lugar para comer choripan cuando el antojo pega', reservation_id:43)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'que buen chorizo', reservation_id:44)

Comment.create(kitchen_rating:3, ambient_rating:3, service_rating:3, description:'un lugar pasable, con servicio pasable', reservation_id:45)
#comentarios de aliento del llano
Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'Que gran servicio y que comida llanera tan Buena', reservation_id:46)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:47)
#comentarios de casa urrutia
Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'la paella estuvo divina', reservation_id:48)

Comment.create(kitchen_rating:5, ambient_rating:3.5, service_rating:4.5, description:'buena tortilla y buen servicio', reservation_id:49)

Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:50)
#comentarios de bonsai sushi
Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:51)

Comment.create(kitchen_rating:4, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento y servicio', reservation_id:52)

Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:53)

Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'servicio perfecto', reservation_id:54)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'el servicio estuvo lento y me trajeron algo que no pedi', reservation_id:55)

Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:56)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:57)
#comentarios de roma mia
Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:58)

Comment.create(kitchen_rating:3.5, ambient_rating:3.5, service_rating:3.5, description:'la experiencia estubo Buena', reservation_id:59)

Comment.create(kitchen_rating:3, ambient_rating:3.5, service_rating:3, description:'la comida no se sintio como italiana de verdad y el servicio estaba telible', reservation_id:60)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:61)
#comentarios de salon canton
Comment.create(kitchen_rating:4.5, ambient_rating:4.5, service_rating:4.5, description:'excelente establecimiento', reservation_id:62)

Comment.create(kitchen_rating:3, ambient_rating:3, service_rating:3, description:'el pollo no estaba suficientemente verde', reservation_id:63)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:64)
#comentarios de pancho villa tacos
Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:65)

Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'excelente establecimiento', reservation_id:66)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:67)

Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'excelente establecimiento', reservation_id:68)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:69)

Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'excelente establecimiento', reservation_id:70)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:71)

Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'excelente establecimiento', reservation_id:72)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:73)

Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'excelente establecimiento', reservation_id:74)

Comment.create(kitchen_rating:4, ambient_rating:4, service_rating:4, description:'excelente establecimiento', reservation_id:75)

Comment.create(kitchen_rating:5, ambient_rating:5, service_rating:5, description:'excelente establecimiento', reservation_id:76)
#fin de comentarios
#union restaurantes con tipo de cocina
RestaurantKitchen.create(restaurant_id:1, kitchen_type_id:1)

RestaurantKitchen.create(restaurant_id:2, kitchen_type_id:1)

RestaurantKitchen.create(restaurant_id:3, kitchen_type_id:1)

RestaurantKitchen.create(restaurant_id:4, kitchen_type_id:2)

RestaurantKitchen.create(restaurant_id:5, kitchen_type_id:1)

RestaurantKitchen.create(restaurant_id:6, kitchen_type_id:3)

RestaurantKitchen.create(restaurant_id:7, kitchen_type_id:4)

RestaurantKitchen.create(restaurant_id:8, kitchen_type_id:5)

RestaurantKitchen.create(restaurant_id:9, kitchen_type_id:6)

RestaurantKitchen.create(restaurant_id:10, kitchen_type_id:7)

RestaurantKitchen.create(restaurant_id:11, kitchen_type_id:1)

RestaurantKitchen.create(restaurant_id:12, kitchen_type_id:1)

RestaurantKitchen.create(restaurant_id:13, kitchen_type_id:1)

RestaurantKitchen.create(restaurant_id:14, kitchen_type_id:2)

RestaurantKitchen.create(restaurant_id:15, kitchen_type_id:1)

RestaurantKitchen.create(restaurant_id:16, kitchen_type_id:3)

RestaurantKitchen.create(restaurant_id:17, kitchen_type_id:4)

RestaurantKitchen.create(restaurant_id:18, kitchen_type_id:5)

RestaurantKitchen.create(restaurant_id:19, kitchen_type_id:6)

RestaurantKitchen.create(restaurant_id:20, kitchen_type_id:7)
#fin de asociacion de restaurantes con cocinas
# -----------------------------------------------fin de seeds equipo 5--------------------------------------


puts 'diner seeds'

puts 'restaurants seeds'
Restaurant.create(name: 'focaccia', address: 'urb el picacho', map_location: '10.4892303,-66.8453498', zip_code: '1204', capacity: 100, description: 'blablablablabla',
rif: 'J-22222212-3', start_time: '05:00:00', end_time: '22:00:00', particular: false, user_id: 21, place_id: 1422)
Restaurant.create(name: 'focaccia2', address: 'urb el picacho av panamericana', map_location: '10.3870529,-66.9650207', zip_code: '1202', capacity: 100, description: 'blablablablabla',
    rif: 'J-22342222-6', start_time: '17:00:00', end_time: '23:00:00', particular: false, user_id: 22, place_id: 1235)

puts 'promo seeds'
Promo.create(yumis: false, name: 'promo1', promo_type: '2x1', description: 'buena promo', restaurant_id: 1)
Promo.create(yumis: false, name: 'promo2', promo_type: '2x1', description: 'buena promo',  restaurant_id: 2)
##
Calendar.create(final_date: '2020/2/14')
Calendar.create(final_date: '2020/2/15')
PromoCalendar.create(id: 21,promo_id: 21, calendar_id: 21)
PromoCalendar.create(id: 22,promo_id: 22, calendar_id: 22)

puts 'calendars seeds'
Calendar.create!(final_date: 17.to_s + "/" + "12" + "/" + "2019")
Calendar.create!(final_date: 18.to_s + "/" + "12" + "/" + "2019")
Calendar.create!(final_date: 23.to_s + "/" + "12" + "/" + "2019")
Calendar.create!(final_date: 24.to_s + "/" + "12" + "/" + "2019")
Calendar.create!(final_date: 31.to_s + "/" + "12" + "/" + "2019")

puts 'hist_yumis seeds'

HistYumi.create(type_hist_yumis: 'bueno', quantity: 200, diner_id: 1)
HistYumi.create(type_hist_yumis: 'bueno', quantity: 300, diner_id: 1)
HistYumi.create(type_hist_yumis: 'bueno', quantity: 400, diner_id: 1)
puts 'reservations seeds'

Reservation.create(diner_id: 1, reservation_date: '27-12-2019', people_num: 2, restaurant_id: 21, status: 'en proceso', hist_yumi_id: 1, promo_id: 2)
Reservation.create(diner_id: 1, reservation_date: '27-11-2019', people_num: 3, restaurant_id: 21, status: 'activa', hist_yumi_id: 2, promo_id: 1)
Reservation.create(diner_id: 1, reservation_date: '27-10-2019', people_num: 4, restaurant_id: 21, status: 'cancelada', hist_yumi_id: 3, promo_id: 2)
Reservation.create(diner_id: 1, reservation_date: '27-01-2019', people_num: 1, restaurant_id: 22, status: 'cancelada', hist_yumi_id: 3, promo_id: 2)

puts 'comments seeds'
Comment.create(kitchen_rating: 4, ambient_rating: 3, service_rating: 3, description: 'buena comida, mal servicio', reservation_id: 1)
Comment.create(kitchen_rating: 5, ambient_rating: 2, service_rating: 4, description: 'buena comida, mal ambiente', reservation_id: 2)
Comment.create(kitchen_rating: 4, ambient_rating: 4, service_rating: 5, description: 'buena comida, buen servicio', reservation_id: 3)
Comment.create(kitchen_rating: 1, ambient_rating: 2, service_rating: 2, description: 'mala comida, mal servicio', reservation_id: 4)


puts 'menu_types seeds'

MenuType.create(name: 'Desayuno', restaurant_id: 21)
MenuType.create(name: 'Almuerzo', restaurant_id: 21)

puts 'plates seeds'

Plate.create(name: 'papa con queso', description: 'papa asada con queso', price: 20.99, menu_type_id: 1)
Plate.create(name: 'panquecas', description: 'panquecas con syrup', price: 12.99, menu_type_id: 1)
Plate.create(name: 'arepa', description: 'arepa con carne', price: 7.99, menu_type_id: 1)
Plate.create(name: 'Strogonoff', description: 'Strogonoff de lomito', price: 8.99, menu_type_id: 2)
Plate.create(name: 'cachapa', description: 'chachapa con queso de mano', price: 2.99, menu_type_id: 2)

RestaurantKitchen.create(restaurant_id:21, kitchen_type_id:5)

Restaurant.create(name: 'Gaeta', address: 'Estado ' + Place.estado(750)[0].name + ' municipio '+ Place.municipio(750)[0].name + ' parroquia ' + Place.find(750).name, map_location: '10.3870529,-66.9650207', zip_code: '1202', capacity: 100, description: 'blablablablabla', rif: 'J-82342122-6', start_time: '17:00:00', end_time: '23:00:00', particular: false, user_id: 23, place_id: 750)
Restaurant.create(name: 'Gaeta', address: 'Estado ' + Place.estado(521)[0].name + ' municipio '+ Place.municipio(521)[0].name + ' parroquia ' + Place.find(521).name, map_location: '10.3870529,-66.9650207', zip_code: '1202', capacity: 100, description: 'blablablablabla', rif: 'J-52342122-6', start_time: '17:00:00', end_time: '23:00:00', particular: false, user_id: 24, place_id: 521)
Restaurant.create(name: 'Gaeta', address: 'Estado ' + Place.estado(399)[0].name + ' municipio '+ Place.municipio(399)[0].name + ' parroquia ' + Place.find(399).name, map_location: '10.3870529,-66.9650207', zip_code: '1202', capacity: 100, description: 'blablablablabla', rif: 'J-02342122-6', start_time: '17:00:00', end_time: '23:00:00', particular: false, user_id: 25, place_id: 399)
Restaurant.create(name: 'Gaeta', address: 'Estado ' + Place.estado(1300)[0].name + ' municipio '+ Place.municipio(1300)[0].name + ' parroquia ' + Place.find(1300).name, map_location: '10.3870529,-66.9650207', zip_code: '1202', capacity: 100, description: 'blablablablabla', rif: 'J-12342122-6', start_time: '17:00:00', end_time: '23:00:00', particular: false, user_id: 26, place_id: 1300)
Restaurant.create(name: 'Gaeta', address: 'Estado ' + Place.estado(1062)[0].name + ' municipio '+ Place.municipio(1062)[0].name + ' parroquia ' + Place.find(1062).name, map_location: '10.3870529,-66.9650207', zip_code: '1202', capacity: 100, description: 'blablablablabla', rif: 'J-22342322-6', start_time: '17:00:00', end_time: '23:00:00', particular: false, user_id: 27, place_id: 1062)
MenuType.create(name: 'Almuerzo', restaurant_id: 22)
MenuType.create(name: 'Almuerzo', restaurant_id: 23)
MenuType.create(name: 'Almuerzo', restaurant_id: 24)
MenuType.create(name: 'Almuerzo', restaurant_id: 25)
MenuType.create(name: 'Almuerzo', restaurant_id: 26)
RestaurantKitchen.create(restaurant_id:22,kitchen_type_id:5)
RestaurantKitchen.create(restaurant_id:23,kitchen_type_id:5)
RestaurantKitchen.create(restaurant_id:24,kitchen_type_id:5)
RestaurantKitchen.create(restaurant_id:25,kitchen_type_id:5)
RestaurantKitchen.create(restaurant_id:26,kitchen_type_id:5)


puts 'favorites seeds'

Favorite.create(restaurant_id: 2, diner_id: comensal_g8.id)

