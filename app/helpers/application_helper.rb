module ApplicationHelper
  def current_account
    if current_user.nil? || Account.find_by(user_id: current_user.id).nil?
      @current_account = nil
    else
      @current_account ||= Account.find_by(user_id: current_user.id)
    end
  end
end
