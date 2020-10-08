class ReleaseYearValidator < ActiveModel::Validator
    def validate(record)
        if record.released
            unless record.release_year
                record.errors[:release_year] << "Released song must have a released year."
            else
                now = Time.now
                if now.year < record.release_year
                    record.errors[:release_year] << "Release year is in the future."
                end
            end 
        end 
    end
end  