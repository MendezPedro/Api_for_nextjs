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
                "title":"Titulo one",
                "id":"1",
                "url":"url-one",
                "array":"",
                "content":"## tarea one \n (contenido markdown)",
                "img":""
              },{
                "title":"Titulo two",
                "id":"2",
                "url":"url-two",
                "array":"",
                "content":"## tarea two \n (contenido markdown)",
                "img":""
              },{
                "title":"Titulo three",
                "id":"3",
                "url":"url-three",
                "array":"",
                "content":"## tarea three \n (contenido markdown)",
                "img":""
              },{
                "title":"Titulo four",
                "id":"4",
                "url":"url-four",
                "array":"",
                "content":"## tarea four \n (contenido markdown)",
                "img":""
              },{
                "title":"Titulo five",
                "id":"5",
                "url":"url-five",
                "array":"",
                "content":"## tarea five \n (contenido markdown)",
                "img":""
              },{
                "title":"Titulo six",
                "id":"6",
                "url":"url-six",
                "array":"",
                "content":"## tarea six \n (contenido markdown)",
                "img":""
              },{
                "title":"Titulo seven",
                "id":"7",
                "url":"url-seven",
                "array":"",
                "content":"## tarea seven \n (contenido markdown)",
                "img":""
              },{
                "title":"Titulo eight",
                "id":"8",
                "url":"url-eight",
                "array":"",
                "content":"## tarea eight \n (contenido markdown)",
                "img":""
              }
            ]
          }
          render json: results.to_json
        end
    end
  end
end