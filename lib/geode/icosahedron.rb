class Icosahedron
  include Constants

  def initialize
    @v = [ 
      Vector3d.new(0,  1,  GOLDEN_RATIO),
      Vector3d.new(0, -1,  GOLDEN_RATIO),
      Vector3d.new(0, -1, -GOLDEN_RATIO),
      Vector3d.new(0,  1, -GOLDEN_RATIO),
      Vector3d.new( 1,  GOLDEN_RATIO, 0),
      Vector3d.new(-1,  GOLDEN_RATIO, 0),
      Vector3d.new(-1, -GOLDEN_RATIO, 0),
      Vector3d.new( 1, -GOLDEN_RATIO, 0),
      Vector3d.new( GOLDEN_RATIO, 0,  1),
      Vector3d.new( GOLDEN_RATIO, 0, -1),
      Vector3d.new(-GOLDEN_RATIO, 0, -1),
      Vector3d.new(-GOLDEN_RATIO, 0,  1)
    ]
    @t = [
      Triangle.new(v[0], v[4], v[5]),
      Triangle.new(v[0], v[5], v[11]),
      Triangle.new(v[0], v[11], v[1]),
      Triangle.new(v[0], v[1], v[8]),
      Triangle.new(v[0], v[8], v[4]),
      Triangle.new(v[5], v[4], v[3]),
      Triangle.new(v[4], v[8], v[9]),
      Triangle.new(v[8], v[1], v[7]),
      Triangle.new(v[1], v[11], v[6]),
      Triangle.new(v[11], v[5], v[10]),
      Triangle.new(v[2], v[7], v[6]),
      Triangle.new(v[2], v[6], v[10]),
      Triangle.new(v[2], v[10], v[3]),
      Triangle.new(v[2], v[3], v[9]),
      Triangle.new(v[2], v[9], v[7]),
      Triangle.new(v[6], v[7], v[1]),
      Triangle.new(v[7], v[9], v[8]),
      Triangle.new(v[9], v[3], v[4]),
      Triangle.new(v[3], v[10], v[5]),
      Triangle.new(v[10], v[6], v[11]),
    ]
  end
end
