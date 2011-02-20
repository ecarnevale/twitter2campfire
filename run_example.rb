CAMPFIRE_SUBDOMAIN = ''
CAMPFIRE_ROOM = '' # the NAME of the room, case sensitive
CAMPFIRE_API_TOKEN = '' #API TOKEN instead of EMAIL and PASSWORD AUTHENTICATION method

FEED_URL = '' # from http://search.twitter.com
CACHE_FILE = 'archived_latest.txt'
OPTIONS = {} # {:twicture => true} # => posts tweets as Twictures

require 'twitter2campfire'

campfire = Tinder::Campfire.new(CAMPFIRE_SUBDOMAIN, :token => CAMPFIRE_API_TOKEN)

t = Twitter2Campfire.new(FEED_URL, campfire, CAMPFIRE_ROOM, CACHE_FILE, OPTIONS)
t.publish_entries
