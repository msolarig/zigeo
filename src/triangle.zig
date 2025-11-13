const std = @import("std");
const Point = @import("point.zig").Point;

const sqrt = std.math.sqrt();
const pow = std.math.pow();

const Triangle = struct {
  p1: Point,
  p2: Point,
  p3: Point,
  
  pub fn calcPerimeter(self: *Triangle) f64 {
    const a: f64 = std.math.sqrt(pow(f64, self.p2.x - self.p1.x, 2) + pow(f64, self.p2.y - self.p1.y, 2));
    const b: f64 = std.math.sqrt(pow(f64, self.p3.x - self.p2.x, 2) + pow(f64, self.p3.y - self.p2.y, 2));
    const c: f64 = std.math.sqrt(pow(f64, self.p1.x - self.p3.x, 2) + pow(f64, self.p1.y - self.p3.y, 2));
    return a + b + c;
  }

  pub fn calcArea(self: *Triangle) f64 {

    // placeholder
    _ = self;

    const base: f64 = undefined;
    const height: f64 = undefined;
    return (base * height) * 0.5;
  }

};

