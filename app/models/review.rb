class Review <ActiveRecord::Base
    belongs_to :book 
    belongs_to :user

    def self.best_score
        self.all.order(reviews: :desc).first
      end
end