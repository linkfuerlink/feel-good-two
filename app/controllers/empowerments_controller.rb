class EmpowermentsController < ApplicationController

  # before_action :find_empowerment

  def dashboard
     @empowerment = current_user.empowerment
  end

  def new_activity
    @empowerment = Empowerment.where(user: current_user)
  end

  def create_activity
    @empowerment = Empowerment.where(user: current_user)
  end

  # private

  # def find_empowerment
  #   @empowerment = current_user.empowerment
  #   # authorize @empowerment
  # end

end
