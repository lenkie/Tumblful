class VideoLink < ActiveRecord::Base
    scope :recent, lambda { order('created_at DESC').limit(10) }

    validates_presence_of :url
    validates_presence_of :title
    belongs_to :user 
    has_many :likes, as: :likeable
end
