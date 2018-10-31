class SearchController < ApplicationController
    def index
    end



    def results
        @characters = Character.where('hero LIKE ?', "%#{params[:q]}%")
    end
end
