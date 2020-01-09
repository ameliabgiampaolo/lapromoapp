class Restaurant < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :promos
  has_many :menu_types
  has_many :payments
  has_many :favorites
  has_many :diners, through: :favorites
  has_many :reservations
  has_many :photos, dependent: :destroy
  has_many :restaurant_kitchens
  has_many :kitchen_types, through: :restaurant_kitchens

    scope :restaurant_of_place, ->(id) {find_by_sql('
          select*
           from (select array_to_json(array_agg(row_to_json(t))) as kt, rest_id as id
           from (
             select a.id,
    		a.name,
    		c.id as rest_id
    		from kitchen_types a
             inner join restaurant_kitchens b on  b.kitchen_type_id = a.id
             INNER JOIN restaurants c on b.restaurant_id = c.id
             ) t group by t.rest_id) a


             INNER JOIN restaurants AS rest ON rest.id = a.id
    	 INNER JOIN  (select array_to_json(array_agg(row_to_json(g))) as photos, rest_id as idph
           from (
             select p.photo,
    		c.id as rest_id
    		from photos p
    		INNER JOIN restaurants c on p.restaurant_id = c.id
             ) g group by g.rest_id) ph  ON rest.id = ph.idph

                   ')

             }


    scope :restaurant_of_list, ->(id,query) {find_by_sql('
                   select*
                    from (select array_to_json(array_agg(row_to_json(t))) as kt, rest_id as id
                    from (
                      select a.id,
                 a.name,
                 c.id as rest_id
                 from kitchen_types a
                      inner join restaurant_kitchens b on  b.kitchen_type_id = a.id
                      INNER JOIN restaurants c on b.restaurant_id = c.id
                      ) t group by t.rest_id) a


                      INNER JOIN restaurants AS rest ON rest.id = a.id
                INNER JOIN  (select array_to_json(array_agg(row_to_json(g))) as photos, rest_id as idph
                    from (
                      select p.photo,
                 c.id as rest_id
                 from photos p
                 INNER JOIN restaurants c on p.restaurant_id = c.id
                      ) g group by g.rest_id) ph  ON rest.id = ph.idph

                            where 1 = 1 ' +query)

                      }


    scope :restaurant_filter_name, ->(q) {find_by_sql('
                 select*
                  from (select array_to_json(array_agg(row_to_json(t))) as kt, rest_id as id
                  from (
                    select a.id,
              a.name,
              c.id as rest_id
              from kitchen_types a
                    inner join restaurant_kitchens b on  b.kitchen_type_id = a.id
                    INNER JOIN restaurants c on b.restaurant_id = c.id
                    ) t group by t.rest_id) a


                    INNER JOIN restaurants AS rest ON rest.id = a.id
             INNER JOIN  (select array_to_json(array_agg(row_to_json(g))) as photos, rest_id as idph
                  from (
                    select p.photo,
              c.id as rest_id
              from photos p
              INNER JOIN restaurants c on p.restaurant_id = c.id
                    ) g group by g.rest_id) ph  ON rest.id = ph.idph

                          where rest.name LIKE '+' \'%'+ q +'%\'')

          }

    scope :restaurant_filter_address, ->(q) {find_by_sql('
           select*
            from (select array_to_json(array_agg(row_to_json(t))) as kt, rest_id as id
            from (
              select a.id,
        a.name,
        c.id as rest_id
        from kitchen_types a
              inner join restaurant_kitchens b on  b.kitchen_type_id = a.id
              INNER JOIN restaurants c on b.restaurant_id = c.id
              ) t group by t.rest_id) a


              INNER JOIN restaurants AS rest ON rest.id = a.id
       INNER JOIN  (select array_to_json(array_agg(row_to_json(g))) as photos, rest_id as idph
            from (
              select p.photo,
        c.id as rest_id
        from photos p
        INNER JOIN restaurants c on p.restaurant_id = c.id
              ) g group by g.rest_id) ph  ON rest.id = ph.idph

                    where rest.address LIKE '+' \'%'+ q +'%\'')

              }


    scope :restaurant_filter_kitchentype, ->(q) {find_by_sql('
           select*
            from (select array_to_json(array_agg(row_to_json(t))) as kt, rest_id as id
            from (
              select a.id,
        a.name,
        c.id as rest_id
        from kitchen_types a
              inner join restaurant_kitchens b on  b.kitchen_type_id = a.id
              AND b.kitchen_type_id ='+q+'
              INNER JOIN restaurants c on b.restaurant_id = c.id
              ) t group by t.rest_id) a


              INNER JOIN restaurants AS rest ON rest.id = a.id
       INNER JOIN  (select array_to_json(array_agg(row_to_json(g))) as photos, rest_id as idph
            from (
              select p.photo,
        c.id as rest_id
        from photos p
        INNER JOIN restaurants c on p.restaurant_id = c.id
              ) g group by g.rest_id) ph  ON rest.id = ph.idph

                  ')

              }

    scope :filter_generic, ->(query) {find_by_sql('

      SELECT distinct restaurants.id as id FROM restaurants
      LEFT JOIN promos ON promos.restaurant_id = restaurants.id
      LEFT JOIN restaurant_kitchens ON restaurant_kitchens.restaurant_id = restaurants.id
      LEFT JOIN promo_calendars ON promo_calendars.promo_id = promos.id
      LEFT JOIN calendars ON calendars.id = promo_calendars.calendar_id
      WHERE 1 = 1

      '+query)
    }

    #scope :restaurant_of_place, ->(id) {joins(:restaurant_kitchens).joins(:kitchen_types).where(place_id: id).select('*').distinct}

  validates :name,:presence => {:message => "El campo nombre no puede estar vacio"},
             format: {with: /\A[a-zA-Z\s]+\z/, message: "El campo nombre no puede tener caracteres especiales"}

  # VALIDACIONES PARA EL CAMPO DIRECCION DEL RESTAURANTE
  validates :address,:presence => {:message => "El campo dirección no puede estar vacio"}

  ## VALIDACIONES PARA EL CAMPO ZONA POSTAL DEL RESTAURANTE
  validates :zip_code,:presence => {:message => "El campo zona postal no puede estar vacio"},
             numericality: {only_integer: true, message: "Debe ingresar solo números"},
             length: { is: 4, message: "La zona postal tiene un tamaño de solo 4 números"}

  ## VALIDACIONES PARA EL CAMPO CAPACIDAD DEL RESTAURANTE
  validates :capacity,:presence => {:message => "El campo capacidad no puede estar vacio"},
             numericality: {only_integer: true, message: "Debe ingresar solo números"}
            # numericality: { greater_than_or_equal_to: 10, message: "La capacidad debe ser mínimo para 10 personas"}

  ## VALIDACIONES PARA EL CAMPO DESCRIPCION DEL RESTAURANTE
  validates :description,:presence => {:message => "El campo descripción no puede estar vacio"}

  ## VALIDACIONES PARA EL CAMPO RIF DEL RESTAURANTE
  validates :rif,:presence => {:message => "El campo RIF no puede estar vacio"},
            uniqueness: {case_sensitive: true, message: "Ya existe este RIF en nuestros registros"},
            format: {with: /\AJ-([0-9]{8})-([0-9]{1}\Z)/, message: "Formato del RIF incorrecto"},
            length: { is: 12, message: "El RIF tiene un tamaño de 12 caracteres"}

  accepts_nested_attributes_for :photos, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :user

 


  ## SCOPE PARA RECIBIR CONSULTA DE USUARIOS NO APROBADOS
  scope :no_aprobados, -> { Restaurant.joins(:user).where("users.approved = false") }
  ## SCOPE PARA RECIBIR CONSULTA DE USUARIOS APROBADOS
  scope :aprobados, -> { Restaurant.joins(:user).where("users.approved = true") }
  # Ex:- scope :active, -> {where(:active => true)}

  ## VALIDACIONES PARA EL CAMPO HORARIO INICIO DEL RESTAURANTE
  validates :start_time,:presence => {:message => "Debe indicar el horario de inicio del restaurant"}

  ## VALIDACIONES PARA EL CAMPO HORARIO FIN DEL RESTAURANTE
  validates :end_time,:presence => {:message => "Debe indicar el horario de cierre del restaurant"}

  validates_numericality_of :place_id, greater_than: 361, less_than: 1500
  validate :times?

  def times?

    if !end_time.blank? and !start_time.blank?
      if end_time <= start_time
        errors.add(:end_time, 'El campo Hora de cierre no puede ser menor o igual que el campo hora de apertura')
      end
    end

  end



  scope :places, -> (placeid){
   (where place_id: Place.where(place_id: Place.where(place_id: Place.where(id: placeid).pluck('id')).pluck('id')).pluck('id')).count('place_id')
  }

  #Para buscar restaurantes mas reservados
  #Primero cuenta la cantidad de restaurant_id repetidos en la tabla reservation y los guarda como total_reservas,
  #y los compara con el restaurant.id de la tabla restaurant
  #finalmente los agrupa por restaurant.id y los ordena descendentemente por medio del total_reservas
  scope :mas_reservados, -> {
    select("restaurants.*, COUNT(reservations.restaurant_id) total_reservas").joins(:reservations).group("restaurants.id").order("total_reservas DESC")
  }
end
