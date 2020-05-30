defmodule GrpowWeb.PowResetPassword.MailerView do
  use GrpowWeb, :mailer_view

  def subject(:reset_password, _assigns), do: "Reset password link"
end
