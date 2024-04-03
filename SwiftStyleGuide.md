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