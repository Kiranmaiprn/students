class ClientsController < ApplicationController
    def index
        if params[:status]=="activated"
            render html: "client account has been #{:status}"
        else
            render json "njn"
        end
    end
    def create
        c=Client.create(params[:set_values])
        render json: c
    end
    def update
        client=Client.find(params[:id])
        if client.update!(set_values)
            redirect_to client
        else
            render json client.errors
        end
    

    end
    private
    def set_values
        params.require(:client).permit(:name, :age)
    end
    
end