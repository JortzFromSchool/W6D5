class CatRentalRequest < ApplicationRecord 
    validates :cat_id, :start_date, :end_date, presence: true 
    validates :status, inclusion: [ 'PENDING', 'APPROVED', 'DENIED'], presence: true
    validates :does_not_overlap_approved_request, acceptance: true

    belongs_to :cat,
        foreign_key: :cat_id,
        class_name: :Cat 

    def overlapping_requests
        CatRentalRequest
            .where(cat_id: self.cat_id)
            .where.not(id: self.id)
            .where('(start_date <= :end_date AND start_date >= :start_date) OR (end_date <= :end_date AND end_date >= :start_date)', end_date: end_date, start_date: start_date )
            
            
    end

    def overlapping_approved_requests
        overlapping_requests.where("status = 'APPROVED'")
    end

    def does_not_overlap_approved_request
        !overlapping_approved_requests.exists?
    end






end