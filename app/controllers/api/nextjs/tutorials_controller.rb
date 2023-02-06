module Api
    module Nextjs
      class TutorialsController < BaseController
        def data_json
            unless params.present? 
              head :bad_request
              return
            end
    
          # name = "%#{params[:name]}%"
#             # start_date = params[:start_date]
#             # career = params[:career]
#             # cohort = Cohort.joins(:career).where("cohorts.name LIKE? and cohorts.start_date =? and careers.name =?", name, start_date, career).take
#             # if cohort.nil?
#             #   results = {}
#             #   render json: results.to_json
#             #   return
#             # end
    
          results = 
            {"pages":[
              {
                "title":"Titulo-one",
                "id":"1",
                "array":"",
                "content":"##tarea one (contenido markdown)",
                "img":""
              },{
                "title":"Titulo-two",
                "id":"2",
                "array":"",
                "content":"##tarea two (contenido markdown)",
                "img":""
              },{
                "title":"Titulo-three",
                "id":"3",
                "array":"",
                "content":"##tarea three (contenido markdown)",
                "img":""
              },{
                "title":"Titulo-four",
                "id":"4",
                "array":"",
                "content":"##tarea four (contenido markdown)",
                "img":""
              },{
                "title":"Titulo-five",
                "id":"5",
                "array":"",
                "content":"##tarea five (contenido markdown)",
                "img":""
              },{
                "title":"Titulo-six",
                "id":"6",
                "array":"",
                "content":"##tarea six (contenido markdown)",
                "img":""
              },{
                "title":"Titulo-seven",
                "id":"7",
                "array":"",
                "content":"##tarea seven (contenido markdown)",
                "img":""
              },{
                "title":"Titulo-eight",
                "id":"8",
                "array":"",
                "content":"##tarea eight (contenido markdown)",
                "img":""
              }
            ]
          }
          render json: results.to_json
        end
    end
  end
end