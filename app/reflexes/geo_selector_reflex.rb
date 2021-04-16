# frozen_string_literal: true

class GeoSelectorReflex < ApplicationReflex
  def select_company
    @company = session[:company] = element[:value].start_with?("Select a") ? nil : element[:value]
  end

  def select_department
    @company = session[:company]
    @department = session[:department] = element[:value].start_with?("Select a") ? nil : element[:value]
  end

  def select_employee
    @company = session[:company]
    @department = session[:department]
    @employee = session[:employee] = element[:value].start_with?("Select a") ? nil : element[:value]
  end

  def edit
    binding.pry
    @edit_id = element.dataset[:id].to_i
  end

  def cancel_edit
    @edit_id = nil
  end

  def update
    Todo.find_by(session_id: session.id.to_s, id: element.dataset[:id])&.update title: element[:value]
  end

  def form
    @employee = Employee.new(description: element[:value])
    @employee.valid?
  end
end
