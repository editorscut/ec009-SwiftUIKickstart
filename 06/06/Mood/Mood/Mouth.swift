import SwiftUI

struct Mouth {
  let size: CGFloat
  let value: Double
}

extension Mouth: View {
  var body: some View {
    path
      .stroke(lineWidth: lineWidth)
      .frame(width: width,
             height: height,
             alignment: .center)
      .offset(x: 0,
              y: height/2)
      .foregroundColor(.black)
  }
}

extension Mouth {
  var path: Path {
    var path = Path()
    path.move(to: startingPoint)
    path.addCurve(to: endingPoint,
                  control1: leftControlPoint,
                  control2: rightControlPoint)
    return path
  }
}

extension Mouth {
  var width: CGFloat {
    size * 3 / 4
  }
  
  var height: CGFloat {
    size / 4
  }
  
  var lineWidth: CGFloat {
    size / 40
  }
  
  var startingPoint: CGPoint {
    CGPoint(x: 0,
            y: height / 2)
  }
  
  var endingPoint: CGPoint {
    CGPoint(x: width,
            y: height / 2)
  }
  
  var centerPoint: CGPoint {
    CGPoint(x: width / 2,
            y: CGFloat(value) * height / 100)
  }
  
  var yForControlPoints: CGFloat {
    CGFloat(value) * height / 100
  }
  var leftControlPoint: CGPoint {
    CGPoint(x: width / 4,
            y: yForControlPoints)
  }
  var rightControlPoint: CGPoint {
    CGPoint(x: 3 * width / 4,
            y: yForControlPoints)
  }
}

struct Mouth_Previews: PreviewProvider {
  static var previews: some View {
    Mouth(size: 100,
          value: 60)
  }
}

