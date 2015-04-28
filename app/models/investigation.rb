class Investigation < ActiveRecord::Base

	belongs_to :applicant
	belongs_to :user
	belongs_to :client


def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
    scoped
  end
end
end
