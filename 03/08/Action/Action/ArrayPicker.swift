import SwiftUI

struct ArrayPicker<T: CustomStringConvertible> {
  let array: Array<T>
  @Binding var index: Int
}

extension ArrayPicker: View {
  var body: some View {
    Picker("Choose",
           selection: $index){
      ForEach(array.indices) {index in
        Text(array[index].description)
      }
    }
    .pickerStyle(SegmentedPickerStyle())
    .padding()
  }
}

struct ArrayPicker_Previews: PreviewProvider {
  static var previews: some View {
    ArrayPicker(array: [0,1,2],
                index: .constant(1))
      .previewLayout(.sizeThatFits)
  }
}
