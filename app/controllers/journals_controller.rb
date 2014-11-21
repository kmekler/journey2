class JournalsController < ApplicationController

def index
	
	if params[:weather]
	  @journals = Journal.where(:'weather' => params[:weather]) 

	  @back = 1
    else
	  @journals =  Journal.all
	  @back = nil
    end
 end	

def show 
	@journal = Journal.find(params[:id])
end

def filter
   
   redirect_to journals_path(:weather => params[:weather])
end

def new
	@journal = Journal.new
end

def create
	@journal = Journal.new(params.require(:journal).permit(:weather, :food, :mood, :comment))

	if @journal.save
		redirect_to journals_path
	else
		render 'new'
	end	
end

def edit
	@journal = Journal.find(params[:id])
end	

def update
	@journal = Journal.find(params[:id])
	if @journal.update_attributes(params.require(:journal).permit(:weather, :food, :mood, :comment))
		redirect_to journals_path
	else
		render 'edit'
	end	
end	

def destroy
	@journal = Journal.find(params[:id])
	@journal.destroy
	redirect_to journals_path
end

end
