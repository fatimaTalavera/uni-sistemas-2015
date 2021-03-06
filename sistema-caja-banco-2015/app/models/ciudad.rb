class Ciudad < ActiveRecord::Base
	audited
	has_many :bancos
	def name_ciudad
		"#{nombre}"
	end

		validates 	:nombre, 	:presence => {:message => "No puede estar en blanco"},
							:uniqueness => {:message => "Ya existe esta Ciudad"},
							:length => { in: 4..20 , message: "Debe tener entre 4 y 20 caracteres"},
			  		   		:format => {with: /[a-zA-ZÃ�ï¿½Ã�Â±Ã�Â¡Ã�Â©Ã�Â­Ã�Â³Ã�Âº]/, message: 'Solo se permiten letras'}

end
