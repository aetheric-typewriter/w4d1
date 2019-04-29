# == Schema Information
#
# Table name: users
#
#  id       :bigint           not null, primary key
#  username :string
#

class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    has_many :shares,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :delete_all

    has_many :shared_artworks,
        through: :shares,
        source: :artwork,
        dependent: :delete_all
end
