module UsersHelper
  def form_title
    @user.new_record? ? "Create User" : "Edit User"
  end
end
