# encoding: utf-8

class Bid < ActiveRecord::Base
     paginates_per 10
validates :size, :pm, :presence => true
belongs_to :user
belongs_to :hit





end
