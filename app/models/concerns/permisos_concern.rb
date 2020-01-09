module PermisosConcern
    extend ActiveSupport::Concern
    #Comprobar si es rol administrador
    def is_admin?
        self.role_id == 1
    end
    #comprobar si es rol restaurante
    def is_restaurant?
        self.role_id == 2
    end
    #comprobar si es rol comensal
    def is_diner?
        self.role_id == 3
    end
    
end