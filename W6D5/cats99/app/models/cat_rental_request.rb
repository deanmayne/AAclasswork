class CatRentalRequest < ApplicationRecord
    STATUS = ["APPROVED","DENIED", "PENDING"]
    validates :cat_id, :start_date, :end_date, :status, presence: true
    validates_inclusion_of :status, :in => STATUS
    validates :is_not_overlapping

    belongs_to :cat, 
        foreign_key: :cat_id,
        class_name: :Cat

    def is_not_overlapping
       if overlapping_approved_request.empty? 
            raise "The cat is taken !"
       end

    end

    def overlapping_request
        CatRentalRequest
            .where.not(id: self.id)
            .where.not('start_date > :end_date OR end_date < :start_date')
            .where.not(self.start_date: start_date, self.end_date: end_date)
            .where(cat_id: cat_id)
    end

    def overlapping_approved_request
        overlapping_requests.where("status = 'APPROVED'")
    end

    def overlapping_pending_request
        overlapping_requests.where("status = 'PENDING'")
    end

    def approve!
        transaction do
            self.status = 'APPROVED'
            self.save!

            overlapping_pending_request.each do |request|
                request.update!(status: 'DENIED')
            end
        end


    end

    def deny!
        self.status = "DENIED"
        self.save!
    end

    def pending?
        self.status == "PENDING"
    end




end
