class AddContactToHubspot

  def initialize(user_id)
    @user = User.find(user_id)
  end

  def call
    firstname = @user.name.split(" ")[0]
    lastname = @user.name.split(" ")[1]
    plan = @user.profile.plans.first.name
    contact = Hubspot::Contact.find_by_email(@user.email)
    if contact.vid.nil?
      Hubspot::Contact.create_or_update!([{email: @user.email, firstname: firstname, lastname: lastname, membership_level: plan}])
    else
      @user.update(hubspot_vid: contact.vid)
      contact.update!(membership_level: plan)
    end
  end

end
