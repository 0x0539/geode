module Geode
  class Vector3d
    def initialize(x, y, z)
      @x = x
      @y = y
      @z = z
    end

    attr_reader :x
    attr_reader :y
    attr_reader :z

    def length()
      Math.sqrt(@x**2 + @y**2 + @z**2)
    end

    def +(other)
      Vector3d.new(@x + other.x, @y + other.y, @z + other.z)
    end

    def -(other)
      Vector3d.new(@x - other.x, @y - other.y, @z - other.z)
    end

    def /(scalar)
      Vector3d.new(@x / scalar, @y / scalar, @z / scalar)
    end

    def normalize()
      self / length()
    end

    # Converts the spherical coordinates to a Vector3d. The
    # inclination and azimuth should be given in radians.
    def self.from_spherical(radius, inclination, azimuth)
      radius = radius.to_f
      inclination = inclination.to_f
      azimuth = azimuth.to_f
      Vector3d.new(
          radius * Math.sin(inclination) * Math.cos(azimuth),
          radius * Math.sin(inclination) * Math.sin(azimuth),
          radius * Math.cos(inclination))
    end

    # Converts the Geocoordinates to a Vector3d with unit
    # length. The latitude and longitude should be given
    # in degrees.
    def self.from_geocoordinates(latitude, longitude)
      from_spherical(1.0,
          to_radians(90.0 - latitude),
          to_radians(longitude))
    end

    # Converts degrees to radians.
    def self.to_radians(degrees)
      degrees.to_f * Math::PI / 180.0
    end
  end
end
