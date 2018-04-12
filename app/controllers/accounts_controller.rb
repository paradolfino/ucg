class AccountsController < ApplicationController
    
    def index
        @accounts = Account.all
        @account = Account.new
    end
    
    def show
        @account = Account.find(params[:id])
    end
    
    def create
        @account = Account.new(account_params)
        if @account.save
           redirect_to @account 
        else
            render 'index'
        end
    end
    
    def update
        
    end
    
    private
    
        def account_params
           params.require(:account).permit(:name, :credits) 
        end
end
