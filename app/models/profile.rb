class Profile
  include Mongoid::Document
  field :first_name,              type: String, default: ""
  field :last_name,               type: String, default: ""
  field :employee_id,             type: Integer, default: ""
  field :cell_phone,              type: String, default: ""
  field :address,                 type: String, default: ""
  field :current_location,        type: String, default: ""
  field :linkedIn_profile,        type: String, default: ""
  field :github_profile,          type: String, default: ""
  field :twitter_profile,         type: String, default: ""

  embedded_in :user

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
