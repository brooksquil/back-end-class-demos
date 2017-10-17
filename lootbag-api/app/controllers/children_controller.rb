class ChildrenController < ApplicationController
    def index
        @children = Child.all
        json_response(@children)
    end

    def create 
        @child = Child.create(params.permit(:name, :delivered))
        json_response(@child)
        
    end

    def show
        # this allows specifying id in url
        @child =
        Child.find(params[:id])
        json_response(@child)
    end

    def update
        @child = 
        Child.find(params[:id])
        @child.update(params.permit(:name, :delivered))
        json_response(@child)
    end

    def destroy
        # destroy deletes entire record
        @child = Child.find(params[:id])
        @child.destroy
    end
end


# params.permit - allows access to specific attributes, otherwise the attributes are set.