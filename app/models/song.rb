class Song < ApplicationRecord
    validates :title, presence: true
    validates :released, inclusion: {in: [true, false]}
    validates :artist_name, presence: true
    validate :release_year_check

    def release_year_check
        if self.released
            unless self.release_year
                self.errors[:release_year] << "Released song must have a released year."
            else
                now = Time.now
                if now.year < self.release_year
                    self.errors[:release_year] << "Release year is in the future."
                end 
            end
        end 
    end 

end
