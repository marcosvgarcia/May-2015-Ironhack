class ProjectsController < ApplicationController

    def index

        #@projects = Project.order(created_at: :desc).limit(10)
        @projects = Project.last_created_projects(10)
    end
    def show
    	
        begin
            @project = Project.find params[:id]
        rescue ActiveRecord::RecordNotFound
            render 'not_projects_found', layout: 'layout2'
        end
        render 'show'
	end

    def new

        @project = Project.new
    end

    def create

        @project = Project.new project_params

        if @project.save
            redirect_to @project
        else
            render 'new'
        end
    end

    private
    def project_params

        params.require(:project).permit(:name, :description)
    end
end
