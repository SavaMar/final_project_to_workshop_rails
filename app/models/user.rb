class User < ActiveRecord::Base
  as_enum :gender, female: 1, male: 0
  has_many :posts
  has_paper_trail
  acts_as_paranoid

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      [:first_name, :last_name]
    ]
  end

  # has_attached_file :avatar, styles: { medium: "300x500#" }, default_url: "missing.png"
  do_not_validate_attachment_file_type :avatar

  has_attached_file :avatar,
    storage: :dropbox,
    dropbox_credentials: Rails.root.join("config/dropbox.yml"),
    styles: { medium: "300x300>", thumb: "100x100" }, 
    default_url: "missed.jpg",
    dropbox_options: {       
      path: proc { |style| "#{style}/#{id}_#{avatar.original_filename}"}
    }
    # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  devise :omniauthable, :omniauth_providers => [:google_oauth2]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name                                                                                                                                                                                     
    ([first_name, last_name] - ['']).compact.join(' ')
  end

  def user
    User.unscoped {super }
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(:email => data["email"]).first

    # Uncomment the section below if you want users to be created if they don't exist
    # unless user
    #     user = User.create(name: data["name"],
    #        email: data["email"],
    #        password: Devise.friendly_token[0,20]
    #     )
    # end
    user
  end

  

end
