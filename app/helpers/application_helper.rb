module ApplicationHelper
  def current_account
    @current_account ||= Account.find_by(user_id: current_user.id)
  end
end
