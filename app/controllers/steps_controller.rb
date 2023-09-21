class StepsController < ApplicationController
  def index
    matching_steps = Step.all

    @list_of_steps = matching_steps.order({ :created_at => :desc })

    render({ :template => "steps/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_steps = Step.where({ :id => the_id })

    @the_step = matching_steps.at(0)

    render({ :template => "steps/show.html.erb" })
  end

  def create
    the_step = Step.new
    the_step.name = params.fetch("query_name")
    the_step.resources = params.fetch("query_resources")
    the_step.skills = params.fetch("query_skills")
    the_step.time_allotted = params.fetch("query_time_allotted")
    the_step.action_plan_id = params.fetch("query_action_plan_id")

    if the_step.valid?
      the_step.save
      redirect_to("/steps", { :notice => "Step created successfully." })
    else
      redirect_to("/steps", { :alert => the_step.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_step = Step.where({ :id => the_id }).at(0)

    the_step.name = params.fetch("query_name")
    the_step.resources = params.fetch("query_resources")
    the_step.skills = params.fetch("query_skills")
    the_step.time_allotted = params.fetch("query_time_allotted")
    the_step.action_plan_id = params.fetch("query_action_plan_id")

    if the_step.valid?
      the_step.save
      redirect_to("/steps/#{the_step.id}", { :notice => "Step updated successfully."} )
    else
      redirect_to("/steps/#{the_step.id}", { :alert => the_step.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_step = Step.where({ :id => the_id }).at(0)

    the_step.destroy

    redirect_to("/steps", { :notice => "Step deleted successfully."} )
  end
end
