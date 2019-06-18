require 'rexml/document'

# Load the JRuby Open SSL library unless it has already been loaded.  This
# prevents multiple handlers using the same library from causing problems.
if not defined?(Jopenssl)
  # Load the Bouncy Castle library unless it has already been loaded.  This
  # prevents multiple handlers using the same library from causing problems.
  # Calculate the location of this file
  handler_path = File.expand_path(File.dirname(__FILE__))
  # Calculate the location of our library and add it to the Ruby load path
  library_path = File.join(handler_path, 'vendor/bouncy-castle-java-1.5.0147/lib')
  $:.unshift library_path
  # Require the library
  require 'bouncy-castle-java'
  
  
  # Calculate the location of this file
  handler_path = File.expand_path(File.dirname(__FILE__))
  # Calculate the location of our library and add it to the Ruby load path
  library_path = File.join(handler_path, 'vendor/jruby-openssl-0.8.8/lib/shared')
  $:.unshift library_path
  # Require the library
  require 'openssl'
  # Require the version constant
  require 'jopenssl/version'
end

# Validate the the loaded openssl library is the library that is expected for
# this handler to execute properly.
if not defined?(Jopenssl::Version::VERSION)
  raise "The Jopenssl class does not define the expected VERSION constant."
elsif Jopenssl::Version::VERSION != '0.8.8'
  raise "Incompatible library version #{Jopenssl::Version::VERSION} for Jopenssl.  Expecting version 0.8.8"
end

# Load the ruby Addressable library unless it has already been loaded.  This prevents
# multiple handlers using the same library from causing problems.
if not defined?(Addressable)
  # Calculate the location of this file
  handler_path = File.expand_path(File.dirname(__FILE__))
  # Calculate the location of our library and add it to the Ruby load path
  library_path = File.join(handler_path, 'vendor/addressable-2.3.4/lib')
  $:.unshift library_path
  # Require the library
  require 'addressable/template'
  
end

# Validate the the loaded Addressable library is the library that is expected for
# this handler to execute properly.
if not defined?(Addressable::VERSION::STRING)
  raise "The Addressable class does not define the expected VERSION constant."
elsif Addressable::VERSION::STRING != '2.3.4'
  raise "Incompatible library version #{Addressable::VERSION::STRING} for Addressable.  Expecting version 2.3.4."
end





# Load the ruby Faraday library (used by the Octokit library) unless it has 
# already been loaded.  This prevents multiple handlers using the same library 
# from causing problems.
if not defined?(Faraday)
  # Calculate the location of this file
  handler_path = File.expand_path(File.dirname(__FILE__))
  # Calculate the location of our library and add it to the Ruby load path
  library_path = File.join(handler_path, 'vendor/faraday-0.8.7/lib')
  $:.unshift library_path
  # Require the library
  require 'faraday'
end

# Validate the the loaded Faraday library is the library that is expected for
# this handler to execute properly.
if not defined?(Faraday::VERSION)
  raise "The Faraday class does not define the expected VERSION constant."
elsif Faraday::VERSION != '0.8.7'
  raise "Incompatible library version #{Faraday::VERSION} for Faraday.  Expecting version 0.8.7."
end






# Load the ruby FaradayMiddleware library (used by the Octokit library) unless 
# it has already been loaded.  This prevents multiple handlers using the same 
# library from causing problems.
if not defined?(FaradayMiddleware)
  # Calculate the location of this file
  handler_path = File.expand_path(File.dirname(__FILE__))
  # Calculate the location of our library and add it to the Ruby load path
  library_path = File.join(handler_path, 'vendor/faraday_middleware-0.9.0/lib')
  $:.unshift library_path
  # Require the library
  require 'faraday_middleware'
  require 'faraday_middleware/version'
end

# Validate the the loaded Faraday library is the library that is expected for
# this handler to execute properly.
if not defined?(FaradayMiddleware::VERSION)
  raise "The FaradayMiddleware class does not define the expected VERSION constant."
elsif FaradayMiddleware::VERSION != '0.9.0'
  raise "Incompatible library version #{FaradayMiddleware::VERSION} for FaradayMiddleware.  Expecting version 0.6.5."
end




# Load the ruby Netrc library (used by the Octokit library) unless 
# it has already been loaded.  This prevents multiple handlers using the same 
# library from causing problems.
if not defined?(Netrc)
  # Calculate the location of this file
  handler_path = File.expand_path(File.dirname(__FILE__))
  # Calculate the location of our library and add it to the Ruby load path
  library_path = File.join(handler_path, 'vendor/netrc-0.7.7/lib')
  $:.unshift library_path
  # Require the library
  require 'netrc'
end

# Validate the the loaded Netrc library is the library that is expected for
# this handler to execute properly.
if not defined?(Netrc::VERSION)
  raise "The Netrc class does not define the expected VERSION constant."
elsif Netrc::VERSION != '0.7.7'
  raise "Incompatible library version #{Netrc::VERSION} for Netrc.  Expecting version 0.7.7."
end





# Load the ruby Multijson library (used by the Octokit library) unless 
# it has already been loaded.  This prevents multiple handlers using the same 
# library from causing problems.
if not defined?(MultiJson)
  # Calculate the location of this file
  handler_path = File.expand_path(File.dirname(__FILE__))
  # Calculate the location of our library and add it to the Ruby load path
  library_path = File.join(handler_path, 'vendor/multi_json-1.7.5/lib')
  $:.unshift library_path
  # Require the library
  require 'multi_json'
end

# Validate the the loaded MultiJson library is the library that is expected for
# this handler to execute properly.
if not defined?(MultiJson::Version)
  raise "The MultiJson class does not define the expected VERSION constant."
elsif MultiJson::Version.to_s != '1.7.5'
  raise "Incompatible library version #{MultiJson::Version} for MultiJson.  Expecting version 1.7.5."
end




# Load the ruby JSON library (used by the Octokit library) unless 
# it has already been loaded.  This prevents multiple handlers using the same 
# library from causing problems.
if not defined?(JSON)
  # Calculate the location of this file
  handler_path = File.expand_path(File.dirname(__FILE__))
  # Calculate the location of our library and add it to the Ruby load path
  library_path = File.join(handler_path, 'vendor/json-1.8.0/lib')
  $:.unshift library_path
  # Require the library
  require 'json'
end

# Validate the the loaded JSON library is the library that is expected for
# this handler to execute properly.
if not defined?(JSON::VERSION)
  raise "The JSON class does not define the expected VERSION constant."
elsif JSON::VERSION.to_s != '1.8.0'
  raise "Incompatible library version #{JSON::VERSION} for JSON.  Expecting version 1.8.0."
end



# Load the ruby hashie library (used by the Octokit library) unless 
# it has already been loaded.  This prevents multiple handlers using the same 
# library from causing problems.
if not defined?(Hashie)
  # Calculate the location of this file
  handler_path = File.expand_path(File.dirname(__FILE__))
  # Calculate the location of our library and add it to the Ruby load path
  library_path = File.join(handler_path, 'vendor/hashie-2.0.5/lib')
  $:.unshift library_path
  # Require the library
  require 'hashie'
  require 'hashie/version'
end

# Validate the the loaded Hashie library is the library that is expected for
# this handler to execute properly.
if not defined?(Hashie::VERSION)
  raise "The Hashie class does not define the expected VERSION constant."
elsif Hashie::VERSION.to_s != '2.0.5'
  raise "Incompatible library version #{Hashie::VERSION} for Hashie.  Expecting version 2.0.5
  ."
end





# Load the ruby MultipartPost library (used by the Octokit library) unless 
# it has already been loaded.  This prevents multiple handlers using the same 
# library from causing problems.
if not defined?(MultipartPost)
  # Calculate the location of this file
  handler_path = File.expand_path(File.dirname(__FILE__))
  # Calculate the location of our library and add it to the Ruby load path
  library_path = File.join(handler_path, 'vendor/multipart-post-1.2.0/lib')
  $:.unshift library_path
  # Require the library
  require 'multipart_post'
end

# Validate the the loaded Hashie library is the library that is expected for
# this handler to execute properly.
if not defined?(MultipartPost::VERSION)
  raise "The MultipartPost class does not define the expected VERSION constant."
elsif MultipartPost::VERSION.to_s != '1.2.0'
  raise "Incompatible library version #{MultipartPost::VERSION} for MultipartPost.  Expecting version 1.2.0
  ."
end





# Load the ruby Octokit library unless 
# it has already been loaded.  This prevents multiple handlers using the same 
# library from causing problems.
if not defined?(Octokit)
  # Calculate the location of this file
  handler_path = File.expand_path(File.dirname(__FILE__))
  # Calculate the location of our library and add it to the Ruby load path
  library_path = File.join(handler_path, 'vendor/octokit-1.24.0/lib')
  $:.unshift library_path
  # Require the library
  require 'octokit'
  #require 'octokit/version'
end

# Validate the the loaded Faraday library is the library that is expected for
# this handler to execute properly.
if not defined?(Octokit::VERSION)
  raise "The Octokit class does not define the expected VERSION constant."
elsif Octokit::VERSION.to_s != '1.24.0'
  raise "Incompatible library version #{Octokit::VERSION} for Octokit.  Expecting version 1.24.0."
end