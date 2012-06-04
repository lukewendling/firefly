# encoding: UTF-8
module Firefly
  class Click
    include DataMapper::Resource
    
#    limit click abuse!
    MAX_CLICKS_PER_IP = 10
    
    property :id,           Serial
    property :ip,           String,     :index => true, :length => 20
    property :code,         String,     :index => true, :length => 64
    property :created_at,   DateTime,   :default => Proc.new{Time.now}
  end
end
