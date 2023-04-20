# encoding: UTF-8

# external
require 'active_support/all'
require 'addressable/uri'
require 'open-uri'
require 'httparty'
require 'rss'
require 'nokogiri'
require 'rubygems'

# internal
require 'sec_query/entity'
require 'sec_query/filing'
require 'sec_query/filing_detail'
require 'sec_query/sec_uri'
require 'sec_query/version'

module SecQuery
  class Configuration
    attr_accessor :request_header

    def initialize
      @request_header = {}
    end
  end

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end

