class InvitationsController < Devise::InvitationsController
  protected

  def after_accept_path_for (resource)
    new_teacher_path # Redirect to this path after a user accepts an invitation
  end
end