class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:site_admin], multiple: false)                                      ##
  ############################################################################################


  # Include default devise modules. Others available are:
  # :confirmable (confirmation email to sign up), :lockable (lock out after so many attempts),
  # :timeoutable (log out user after so much time), :trackable and
  # :omniauthable (integrate 3rd party login i.e. sign in via facebook)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates_presence_of :name

  def first_name
    self.name.split.first
  end

  def last_name
    self.name.split.last
  end
end

def get_facebood_messages
  begin
    contacts_fb
    @messages = retrieves_messages
  rescue IOError => e
    flash[:error] = "Error occured contacting Facebook: #{e}"
  end
end
