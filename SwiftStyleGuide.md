# Swift Style Guide

## Tính đúng đắn

Cố gắng không để code có warning.

## Sử dụng SwiftLine

Các tác giả của bài viết khuyến khích sử dụng công cụ của họ - [SwiftLine](https://github.com/kodecocodes/swift-style-guide/blob/main/SWIFTLINT.markdown).

## Các chuẩn đặt tên

Việc đặt tên mang tính mô tả và tính nhất quán sẽ khiến phần mềm dễ đọc cũng như dễ hiểu hơn. Sử dụng quy ước đặt tên của Swift theo __Nguyên tắc thiết kế API__. Dưới đây là một số điểm chính:

  - cố gắng đặt tên rõ ràng
  - ưu tiên sự rõ ràng hơn là sự ngắn gọn
  - sử dụng __camelCase__ chứ không dùng __snake_case__
  - sử dụng __UpperCamelCase__ cho các thành phần như Class, Extension, Protocol, Enum,... và sử dụng __lowerCamelCase__ cho các thứ khác như biến, hàm,...
  - sử dụng tất cả những từ cần thiết cũng như không dùng những từ không cần thiết
  - đặt tên theo vai trò chứ không đặt tên theo loại
  - đôi khi nên thêm ngữ nghĩa cho những thành phần thiếu thông tin
  - cố gắng sử dụng một cách trôi chảy
  - bắt đầu những _factory methods_ với từ khoá __make__
  - đặt tên hàm theo các chức năng của chúng:
    + các hàm hành động tuân thủ theo quy tắc "-ed", "-ing" cho các phiên bản không thay đổi (non-mutating)
    + các hàm danh từ tuân thủ theo quy tắc formX cho phiên bản thay đổi (mutating)
    + tên của các kiểu boolean phải được hiểu là một cách khẳng định
    + các protocol miêu tả một thứ gì đó nên được đặt tên dưới dạng danh từ
    + các protocol miêu tả một chức năng nào đó nên được đặt tên với đuôi là "-able" hoặc "-ible"
  - sử dụng các thuật ngữ không khiến chuyên gia "bất ngờ" hoặc khiến người mới "bối rối"
  - hết sức hạn chế viết tắt
  - sử dụng tiền lệ cho tên
  - ưu tiên sử dụng các hàm và thuộc tính của lớp thay vì các hàm tự do
  - 
  - đặt tên theo cùng một kiểu mẫu cho các hàm có cùng dạng chức năng
  - hạn chế trả về quá nhiều kiểu dữ liệu
  - chọn tên tham số thật tốt giúp chức hàm dễ hiểu hơn
  - ưu tiên đặt tên cho tham số đầu tiên thay vì đặt tên nó trong tên hàm, ngoại từ các trường hợp đặc biệt như "Delegates"
  - đặt tên cho các tham số là closure hoặc tuple
  - tận dụng các tham số mặc định

### Viết code

Khi muốn tham chiếu đến các hàm lúc viết code, việc rõ ràng là rất quan trọng. Để tham chiếu đến chúng, sử dụng dạng đơn giản nhất có thể.

  - Ví dụ để truy cập tới phương thức _addTarget_ của _UIGetsureRecognizer_, nên gõ tên phương thức với không có các tham số hay các kiểu của chúng.

### Tiền tố của class

Các thành phần trong swift được tự động đặt tên theo module chứa chúng và không nên thêm tiền tố cho chúng như RW. Nếu hai tên từ các module khác nhau xung đột với nhau, ta có thể phân biệt chúng bằng cách thêm tên loại vào tên module. Tuy nhiên, chỉ dùng khi tên module có khả năng gây nhầm lẫn, nó rất hiếm khi xảy ra.

- Ví dụ:

  ```swift
  import SomeModule
  
  let myClass = MyModule.UsefulClass()
  ```

### Delegates

Khi tạo các hàm delegate, tham số đầu tiên nên là nguồn của delegate và không cần phải đặt tên cho nó.

- Đề xuất:

  ```swift
  func namePickerView(_ namePickerView: NamePickerView, didSelectName name: String)
  func namePickerViewShouldReload(_ namePickerView: NamePickerView) -> Bool
  ```

- Không nên:

  ```swift
  func didSelectName(namePicker: NamePickerViewController, name: String)
  func namePickerShouldReload() -> Bool
  ```

### Sử dụng suy luận kiểu dữ liệu

Nên sử dụng tính năng tự suy luận kiểu dữ liệu của trình biên dịch, giúp viết code ngắn gọn hơn, code clean hơn.

- Đề xuất: 

  ```swift
  let selector = #selector(viewDidLoad)
  view.backgroundColor = .red
  let toView = context.view(forKey: .to)
  let view = UIView(frame: .zero)
  ```

- Không nên:

  ```swift
  let selector = #selector(ViewController.viewDidLoad)
  view.backgroundColor = UIColor.red
  let toView = context.view(forKey: UITransitionContextViewKey.to)
  let view = UIView(frame: CGRect.zero)
  ```

### Generics

Tên tham số kiểu generic nên được viết một cách tóm tắm, mô tả bằng cách sử dụng quy tắc _upper camel case_. Khi tên loại của nó không có mối quan hệ hoặc luật lệ nào, sử dụng một chữ cái viết hoa như _T, U_ hoặc _V_.

- Đề xuất:

  ```swift
  struct Stack<Element> { ... }
  func write<Target: OutputStream>(to target: inout Target)
  func swap<T>(_ a: inout T, _ b: inout T)
  ```

- Không nên:

  ```swift
  struct Stack<T> { ... }
  func write<target: OutputStream>(to target: inout target)
  func swap<Thing>(_ a: inout Thing, _ b: inout Thing)
  ```

### Ngôn ngữ 

Sử dụng tiếng Anh Mỹ để phù hợp với API của Apple.

- Đề xuất:

  ```swift
  let color = "red"
  ```

- Không nên:

  ```swift
  let colour = "red"
  ```

## Tổ chức code

Sử dụng _extension_ để sắp xếp code thành các khối. Mỗi extension nên được đặt dưới __// MARK: -__ để giữ cho code luôn được tổ chức tốt.

### Với protocol

Khi thêm protocol vào một model bất kỳ, ưu tiên sử dụng extension cho các phương thức của protocol. Nó giúp các phương thức của protocol luôn được nhóm lại và có thể đơn giản hoá việc thêm một protocol vào class với các phương thức liên quan của nó.

- Đề xuất:

  ```swift
  class MyViewController: UIViewController {
    // class stuff here
  }
  
  // MARK: - UITableViewDataSource
  extension MyViewController: UITableViewDataSource {
    // table view data source methods
  }
  
  // MARK: - UIScrollViewDelegate
  extension MyViewController: UIScrollViewDelegate {
    // scroll view delegate methods
  }
  ```

- Không nên:

  ```swift
  class MyViewController: UIViewController, UITableViewDataSource, UIScrollViewDelegate {
    // all methods
  }
  ```

Vì trình biên dịch không cho phép khai báo lại các các protocol đã thêm trong lớp dẫn xuất, vậy nên không phải lúc nào cũng cần sao chép các nhóm extension của lớp cơ sở. Điều này đặc biệt đúng nếu lớp dẫn xuất là lớp cuối cùng và một số nhỏ các phương thức đang được ghi đè. Việc giữ lại các extension là quyết định của tác giả.

### Code không sử dụng

Với những đoạn code không còn sử dụng (dead), bao gồm cả template của Xcode và những comment nên được xoá đi. Một ngoại lệ là trừ khi đó là tutorial của bạn hoặc sách hướng dẫn người dùng sử dụng comment code.

Các phương thức không trực tiếp liên quan đến tutorial mà việc triển khai nó chỉ gọi đến superclass thì cũng nên xoá đi. Nó bao gồm cả những hàm rỗng/không sử dụng của UIApplicationDelegate.

- Đề xuất:

  ```swift
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Database.contacts.count
  }
  ```

  

- Không nên:

  ```swift
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return Database.contacts.count
  }
  ```



### Tối thiểu các import

Chỉ import những module mà file yêu cầu. Ví dụ, không import _UIKit_ nếu chỉ cần _Foudation_ là đủ và ngược lại.

- Đề xuất:

  ```swift
  import UIKit
  var view: UIView
  var deviceModels: [String]
  ```

  ```swift
  import Foundation
  var deviceModels: [String]
  ```

- Không nên:

  ```swift
  import UIKit
  import Foundation
  var view: UIView
  var deviceModels: [String]
  ```

  ```swift
  import UIKit
  var deviceModels: [String]
  ```

## Spacing

- Chỉ nên thụt lề 2 khoảng cách hơn là sử dụng _tab_ (4 khoảng cách) để tiết kiệm không gian viết code. Để chắc chắn, nên setup tự thụt lề 2 và thụt vào 2 với mỗi lần tab:

  ![indentation](/Users/mac/Downloads/indentation.png)

- Đóng mở các hàm hoặc các câu lệnh như __if/else/switch/while/...__ (bằng dấu __{},(),...__) luôn luôn mở ở cùng dòng và đóng ở dòng mới.
  - Đề xuất:
  ```swift
  if user.isHappy {
    // Do something
  } else {
    // Do something else
  }
  ```
  - Không nên:
  ```swift
  if user.isHappy
  {
    // Do something
  }
  else {
    // Do something else
  }
  ```

- Nên có một dòng trống giữa các hàm và nhiều nhất một dòng giữa các khai báo biến để tăng sự rõ ràng cũng như tổ chức code tốt hơn. Khoảng trống giữa các phương thức thể hiện sự tách biệt giữa các chức năng, khi có quá nhiều phần trong một phương thức chứng tỏ rằng phải chia phương thức thành nhiều phương thức với tính năng nhỏ hơn.
-  Không nên để các khoảng trống trước và sau khi đóng ngoặc.
- Dấu đóng ngoặc đơn __)__ không nên để trên một dòng riêng.
  - Đề xuất:
  ```swift
  let user = try await getUser(
    for: userID,
    on: connection)
  ```
  - Không nên:
  ```swift
  let user = try await getUser(
    for: userID,
    on: connection
  )
  ```  
- Dấu hai chấm __:__ luôn luôn không có khoảng trống ở phía bên trái và có 1 khoảng trống ở phía bên phải. Một số trường hợp ngoại lệ là toán tử ba ngôi __? :__, dictionary rỗng __[:]__ và cú pháp __#selector__ __addTarget(_:action:)__
  - Đề xuất:
  ```swift
  class TestDatabase: Database {
    var data: [String: CGFloat] = ["A": 1.2, "B": 3.2]
  }
  ```
  - Không nên:
  ```swift
  class TestDatabase : Database {
    var data :[String:CGFloat] = ["A" : 1.2, "B":3.2]
  }
  ```
- Một dòng chỉ nên có khoảng 70 ký tự.
- Tránh để lại khoảng trống ở cuối dòng.
- Thêm một dòng mới vào cuối mỗi file.

## Comments
Khi cần, sử dụng _comment_ để giải thích đoạn code làm điều gì. _Comment_ phải được cập nhật theo thời gian hoặc xoá đi.
Tránh _comment_ cùng dòng với code (_không áp dụng với __comment__ dùng để tạo tài liệu_).
Tránh sử dụng _comment_ theo kiểu của ngôn ngữ C (__/*...*/__). Ưu tiên sử dụng dấu hai gạch (//) hoặc ba gạch (///).

## Class và Struct
### Nên sử dụng cái nào?
Nhớ rằng, struct là kiểu giá trị. Sử dụng struct cho những thứ không cần danh tính. Một mảng gồm [a, b, c] thực sự bằng với một mảng khác cũng gồm [a, b, c] và chúng hoàn toàn có thể tráo đổi cho nhau. Việc sử dụng mảng thứ nhất hay mảng thứ hai không quan trọng vì chúng chính xác là cùng một thứ. Đó là lý do tại sao mảng là struct.
Còn class là kiểu tham chiếu. Sử dụng class cho những thứ cần danh tính hoặc một _vòng đời_ cụ thể. Nên mô hình hóa một người thành class bởi vì 2 đối tượng _người_ hoàn toàn là 2 thứ khác nhau. Chỉ đơn giản là hai người có cùng tên, tuổi không có nghĩa là họ là cùng một người. Nhưng sinh nhật của một người thì nên là struct bởi vì sinh nhật vào ngày 3/3/1950 là hoàn toàn giống với sinh nhật của người khác cũng vào ngày 3/3/1950. Bản thân một ngày nào đó thì không có danh tính.
Thỉnh thoảng, một vài thứ là struct cần conform __AnyObject__ hoặc là những model cũ như __NSDate, NSSet__. Cố gắng làm theo những hướng dẫn này càng chặt chẽ càng tốt.
### Ví dụ một định nghĩa
Dưới đây là một ví dụ về class với well-styled:
```swift
class Circle: Shape {
  var x: Int, y: Int
  var radius: Double
  var diameter: Double {
    get {
      return radius * 2
    }
    set {
      radius = newValue / 2
    }
  }

  init(x: Int, y: Int, radius: Double) {
    self.x = x
    self.y = y
    self.radius = radius
  }

  convenience init(x: Int, y: Int, diameter: Double) {
    self.init(x: x, y: y, radius: diameter / 2)
  }

  override func area() -> Double {
    return Double.pi * radius * radius
  }
}

extension Circle: CustomStringConvertible {
  var description: String {
    return "center = \(centerString) area = \(area())"
  }
  private var centerString: String {
    return "(\(x),\(y))"
  }
}
```
Ví dụ trên chứng tỏ sự follow theo style guidelines:
  - Chỉ định kiểu cho các thuộc tính, biến, hằng, khai báo tham số và các câu lệnh khác với khoảng trống ở sau dấu __:__ chứ không phải là trước, ví dụ: __x: Int__, và __Circle: Shape__.
  - Khai báo các biến và cấu trúc có cùng mục đích, tính chất ở trên cùng một dòng.
  - Thụt lề với định nghĩa getter, setter và các thuộc tính observer.
  - Không thêm __internal__ khi nó đã là mặc định. Tương tự, không thêm lại các access modifier khi ghi đè lại phương thức.
  - Thêm các tính năng thêm bằng extension.
  - Ẩn những thứ không chia sẻ, các chi tiết triển khai như __centerString_ trong extension bằng cách sử dụng access control __private__.
### Về sử dụng _self_
Để đảm bảo tính ngắn gọn, tránh sử dụng __self__ khi Swift không yêu cầu để truy cập vào thuộc tính cũng như phương thức của đối tượng.
Chỉ sử dụng self khi được yêu cầu bởi trình biên dịch (trong __@escaping__ closure, hoặc trong khi khởi tạo để phân biệt các đối số với các thuộc tính). Nói cách khác, nếu trình biên dịch không yêu cầu sử dụng __self__, hãy bỏ nó đi.

### Computed Properties
Để đảm bảo tính ngắn gọn, nếu computed property là chỉ đoc (__read-only__), hãy bỏ mệnh đề _get_. Mệnh đề _get_ chỉ bắt buộc sử dụng khi có mệnh đề _set_.
  - Đề xuất:
  ```swift
  var diameter: Double {
    return radius * 2
  }
  ```
  - Không nên:
  ```swift
  var diameter: Double {
    get {
      return radius * 2
    }
  }
  ```

  ### Về _Final_
  Đánh dấu những class hoặc thành phần là __final__ trong tutorial có thể làm sao nhãng khỏi chủ đề chính và nó là không bắt buộc. Tuy nhiên, việc sử dụng __final__ đôi khi có thể làm rõ mục đích của bạn và đáng giá. Trong ví dụ dưới đây, lớp __Box__ có mục đích cụ thể và không có ý định tuỳ chỉnh trong lớp dẫn xuất. Đánh dấu là __final__ có thể làm rõ điều đó.
  ```swift
  // Turn any generic type into a reference type using this Box class.
  final class Box<T> {
    let value: T
    init(_ value: T) {
      self.value = value
    }
  }
  ```
## Khai báo hàm
Khai báo những hàm ngắn trong 1 dòng kể cả dấu đóng ngoặc:
```swift
func reticulateSplines(spline: [Double]) -> Bool {
  // reticulate code goes here
}
```
Đối với hàm có nhiều tham số, để mỗi tham số ở một hàng và thụt lề ở mỗi dòng:
```swift
func reticulateSplines(
  spline: [Double], 
  adjustmentFactor: Double,
  translateConstant: Int, 
  comment: String
) -> Bool {
  // reticulate code goes here
}
```
Không sử dụng __(Void)__ để thể hiện sự thiếu đầu vào, chỉ đơn giản là dùng __()__. Sử dụng __Void__ thay vì __()__ cho closure và cho đầu ra của hàm.
  - Đề xuất:
  ```swift
  func updateConstraints() -> Void {
    // magic happens here
  }

  typealias CompletionHandler = (result) -> Void
  ```
  - Không nên:
  ```swift
  func updateConstraints() -> () {
    // magic happens here
  }

  typealias CompletionHandler = (result) -> ()
  ```

  ## Gọi hàm
  Phản ánh phong cách khai báo hàm tại thời điểm gọi. Gọi hàm phù hợp trên một dòng được viết như sau:
  ```swift
  let success = reticulateSplines(splines)
  ```
  Nếu cần phải wrapped, để mỗi tham số ở một dùng và thụt lề 1 level:
  ```swift
  let success = reticulateSplines(
    spline: splines,
    adjustmentFactor: 1.3,
    translateConstant: 2,
    comment: "normalize the display")
  ```

## Closure
Chỉ sử dụng cú pháp closure theo sau nếu chỉ có duy nhất một tham số closure ở cuối list argument. Đặt tên mô tả cho tham số closure.
  - Đề xuất:
  ```swift
  UIView.animate(withDuration: 1.0) {
    self.myView.alpha = 0
  }

  UIView.animate(withDuration: 1.0, animations: {
    self.myView.alpha = 0
  }, completion: { finished in
    self.myView.removeFromSuperview()
  })
  ```
  - Không nên:
  ```swift
  UIView.animate(withDuration: 1.0, animations: {
    self.myView.alpha = 0
  })

  UIView.animate(withDuration: 1.0, animations: {
    self.myView.alpha = 0
  }) { f in
    self.myView.removeFromSuperview()
  }
  ```
Đối với các closure biểu thức đơn mà ngữ cảnh rõ ràng, sử dụng trả về ngầm định:
```swift
attendeeList.sort { a, b in
  a > b
}
```
Các phương thức chuỗi sử dụng closure ở cuối phải rõ ràng và dễ đọc trong ngữ cảnh. Các quy định về khoảng cách, ngắt dòng và thời điểm sử dụng đối số được đặt tên hay ẩn danh là tuỳ theo quyết định của tác giả. Ví dụ:
```swift
let value = numbers.map { $0 * 2 }.filter { $0 % 3 == 0 }.index(of: 90)

let value = numbers
  .map {$0 * 2}
  .filter {$0 > 50}
  .map {$0 + 10}
```

## Kiểu dữ liệu
Luôn luôn sử dụng các kiểu dữ liệu gốc của Swift khi có sẵn. Swift còn cung cấp khả năng kết nới với Objective-C nên có thể sử dụng đầy đủ bộ phương thức nếu cần.
  - Đề xuất:
  ```swift
  let width = 120.0                                    // Double
  let widthString = "\(width)"                         // String
  ```
  - Không khuyến khích:
  ```swift
  let width = 120.0                                    // Double
  let widthString = (width as NSNumber).stringValue    // String
  ```
  - Không nên:
  ```swift
  let width: NSNumber = 120.0                          // NSNumber
  let widthString: NSString = width.stringValue        // NSString
  ```
Trong khi code, sử dụng __CGFloat__ nếu nó khiến cho code ngắn gọn hơn bằng cách tránh các chuyển đổi.
### Hằng
Hằng được định nghĩa bằng cách sử dụng từ khoá __let__ và biến với từ khoá __var__. Luôn luôn sử dụng __let__ thay cho __var__ nếu giá trị của biến là không đổi.
Tip: Một kỹ thuật tốt đó là luôn sử dụng __let__ khi khai báo và chỉ thay đổi thành __var__ nếu trình biên dịch yêu cầu.
Có thể định nghĩa hằng số trên một type thay vì trên một instance của nó bằng cách sử dụng thuộc tính của type đó. Để khai báo một thuộc tính của type là hằng số và sử dụng mà không cần instance thì ta chỉ cần dùng __static let__. Cách này thường được ưu thích hơn các hằng số toàn cục vì nó dễ phân biệt hơn các thuộc tính instance. Ví dụ:
  - Đề xuất:
  ```swift
  enum Math {
    static let e = 2.718281828459045235360287
    static let root2 = 1.41421356237309504880168872
  }

  let hypotenuse = side * Math.root2
  ```
  - Không nên:
  ```swift
  let e = 2.718281828459045235360287  // pollutes global namespace
  let root2 = 1.41421356237309504880168872

  let hypotenuse = side * root2 // what is root2?
  ```
### Hàm static và các loại thuộc tính của biến