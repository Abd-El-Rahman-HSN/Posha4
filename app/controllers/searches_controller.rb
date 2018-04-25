class SearchesController < ApplicationController


    
      def new
        @search = Search.new
        #@player = Player.uniq.pluch
      end
    
      def create
        @search = Search.new(Search_params)
    
        respond_to @search
      end


      def show
            @search = Search.find(params[:id])
      end

      private


      def Search_params
            params.require(:search).permit(:position, :main_position, :nationality, :age, :last_comp, :with_con_since)
      end
end
