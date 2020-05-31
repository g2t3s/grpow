defmodule GrpowWeb.PowMailer do
  use Pow.Phoenix.Mailer
  #use Bamboo.Mailer, otp_app: :grpow
  require Logger

  #import Bamboo.Email

  def cast(%{user: user, subject: subject, text: text, html: html, assigns: _assigns}) do
    # Build email struct to be used in `process/1`
    #new_email()
      #|> to(user.email)
      #|> from("grpow@example.com")
      #|> subject(subject)
      #|> html_body(html)
      #|> text_body(text)

    %{to: user.email, subject: subject, text: text, html: html}
  end

  def process(email) do
    # Send email
    #deliver_now(email)

    Logger.debug("E-mail sent: #{inspect email}")
  end
end
