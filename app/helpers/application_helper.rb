module ApplicationHelper
  def login_link
    if session[:user_id].nil?
      text = "Log In"
      path = login_path
      method = :get

    else
      text = "Log Out"
      path = logout_path
      method = :delete
    end
    link_to text, path, method: method, class: "warning button"
  end
end
