class AddContactToHubspot

  def initialize(user_id)
    @user = User.find(user_id)
  end

  def call
    firstname = @user.name.split(" ")[0]
    lastname = @user.name.split(" ")[1]
    res = Hubspot::Contact.create!(@user.email, {firstname: firstname, lastname: lastname})
    if res["status"] == "error"
      return
    else
      @user.update(hubspot_vid: res.vid)
    end
  end

end
