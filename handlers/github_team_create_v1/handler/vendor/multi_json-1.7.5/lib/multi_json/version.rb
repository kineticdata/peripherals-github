module MultiJson
  class Version
    MAJOR = 1 unless defined? MultiJson::Version::MAJOR
    MINOR = 7 unless defined? MultiJson::Version::MINOR
    PATCH = 5 unless defined? MultiJson::Version::PATCH
    PRE = nil unless defined? MultiJson::Version::PRE

    class << self

      # @return [String]
      def to_s
        [MAJOR, MINOR, PATCH, PRE].compact.join('.')
      end

    end

  end
end
