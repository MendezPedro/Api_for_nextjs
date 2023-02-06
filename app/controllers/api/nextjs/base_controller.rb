# frozen_string_literal: true

class Api::Nextjs::BaseController < ApplicationController
    protect_from_forgery unless: -> { request.format.json? }
    # skip_before_action :current_banner
    # http_basic_authenticate_with name: "gonzalo", password: "123Vamoscontodo"
    #undef_method :current_admin_user
  
    before_action do |controller|
      authenticate unless Rails.env.test?
    end
    
    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == "admin" && password == "password"
      end
    end
  end
  
  