class User < ApplicationRecord
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :email, uniqueness: true

  validates :user_name, exclusion: { in: %w(test bacancy),
  message: "%{value} is reserved." }

  validates :first_name, :last_name, presence: true

  validates :plan_end_date, comparison: { greater_than: :plan_start_date }

  validates :phone_number, length: { is: 10 }
  validates :zip_code, length: { minimum: 6 }

  validates :password, length: { in: 6..20 }
  

  before_commit :user_created, on: :create
  private
  def user_created
    puts "Creating user"
  end
  

  after_create :user_created
  private
  def user_created
    puts "User Created Successfully"
  end
  

  before_save do
    puts "User data will save in sometimes"
  end

  after_save :age_calc
  private 
  def age_calc
    if self.date_of_birth.present?
      puts "Data saved successfully"
      age = Date.today.year - self.date_of_birth.year
      puts "---------------------------- Age of User is #{age} ----------------------------"
    else
      puts "---------------------------- Age is not calculated without date of birth ----------------------------"
    end
  end

  before_commit do 
    puts "Waiting for some time for commit"
  end
  
  after_commit do 
    puts "User is commited successfully"
  end
  before_destroy do
    puts "Are sure for deleting this user??"
  end
  
  around_destroy do
    puts "User is not able to delete because of this callback" 
  end
  
end
