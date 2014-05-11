class Gist < ActiveRecord::Base

def self.search(search)
  if search
    where('description LIKE ?', "%#{search}%")
  else
    where('')
  end
end

end
