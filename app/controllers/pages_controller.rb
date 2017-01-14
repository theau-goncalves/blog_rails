class PagesController < ApplicationController
    
    before_action :authenticate_user!, only:[:salut]

    def salut
        @name = params[:name]
    end

    def home
    end

end