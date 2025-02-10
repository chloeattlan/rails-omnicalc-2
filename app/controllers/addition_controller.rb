class AdditionController < ApplicationController
  def show_addition_form
    render({ :template => "addition_templates/add_form" })
  end

  def add_these
    @first = params.fetch("first").to_f
    @second = params.fetch("second").to_f

    @result = @first + @second


    render({ :template => "addition_templates/add_results" })
  end
end
