module GetEmailArray

  # :return the array of emails from KEE
  def getKEEArray

    kee_obj = KEE.new
    input_emails = kee_obj.unread_emails
    # connect to KEE script here
    return [] if input_emails.nil?

    return input_emails

  end
end