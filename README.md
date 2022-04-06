# 📝 동기화 메모장

1. 프로젝트 기간: 2022.02.07 - 2022.02.25

<br>

## 🗂 목차
- [📱 구현 화면](#-구현-화면)
- [📃 구현 내용](#-구현-내용)
- [🚀 Trouble Shooting](#-Trouble-Shooting)
- [🤔 고민한 점](#-고민한-점)
- [⌨️ 키워드](#-키워드)

<br>

## 📱 구현 화면
| 기기 종류 | 가로 화면 | 세로 화면 | 검색 화면 |
| :---: | :---: | :---: | :---: |
| **아이패드** | <img src="https://user-images.githubusercontent.com/90945013/162011282-4e725401-7e8a-46b1-91a8-b94a0ab946b2.png" width="300"> | <img src="https://user-images.githubusercontent.com/90945013/162011730-934309cc-bed4-421b-8b04-f98e24c57dd3.png" width="300"> | <img src="https://user-images.githubusercontent.com/90945013/162015722-d68c6978-4fce-4f03-bedd-29d974fd4ca9.png" width="300"> |
| **기기 종류** |**메모 목록화면** | **메모 상세화면**  | **검색 화면** |
| **아이폰** | <img src="https://user-images.githubusercontent.com/90945013/162012615-7ad5beaa-1288-4f41-b7f2-9b41f846d13d.png" width="300"> | <img src="https://user-images.githubusercontent.com/90945013/162012641-eaa50528-8cca-4e00-b734-45b87da2a2cf.png" width="300"> | <img src="https://user-images.githubusercontent.com/90945013/162015476-4ecbd388-1310-443d-aa1b-08c0297768b7.png" width="300"> |

<br>

## 📃 구현 내용
- Split View Controller를 활용하여 화면을 나눌 수 있도록 구현
- Date Formatter을 활용하여 날짜를 지역 및 길이별 표현 하도록 구현
- TextView를 활용하여 사용자의 입력을 받을 수 있도록 구현
- TextViewDelegate를 활용하여 UITextView가 수정될 때 마다 데이터를 수정하도록 구현
- 코어데이터를 사용하여 데이터를 Local에 저장하고 읽도록 구현
- 테이블뷰에서 스와이플을 활용한 삭제 및 공유 기능 구현
- 의존성 관리도구를 사용하여 Dropbox를 연동하고 데이터를 원격에 저장
- AttributedString을 사용하여 제목과 본문의 폰트를 다르게 하여 구분하는 기능 구현
- SearchController를 활용하여 메모의 제목과 본문에 포함된 문자를 검색하는 기능 구현
- 배경색, 글자색 등을 시스템 컬러를 고려하여 라이트모드 / 다크모드 가능 하도록 구현
- 접근성을 고려하여 Dynamic Type, Voice Over가 원활하게 동작하도록 구현
- 다국어처리, 날짜, 읽는 방향 등 지역화를 통해 다양한 사용자가 불편함이 없도록 구현

<br>


## 🚀 Trouble Shooting

### 1. Cell의 Select가 동작하지 않는 문제

* `상황` GestureRecognizer를 ViewController에 추가하자 UITableView의 Select가 되지 않는 현상이 나타났다.
* ![](https://i.imgur.com/4Vf9LkM.gif)
* `이유` 등록한 GestureRecognizer의 프로퍼티인 cancelsTouchesInView가 기본값으로 true로 설정되어있어 문제였다. `cancelsTouchesInVie`w가 `true`인 경우에는 제스처를 인식한 후에 나머지 터치정보들을 뷰로 전달하지 않고 취소되었기 때문에 UITableView의 Select가 먹지 않았던 것이다.
* `해결` 따라서 cancelsTouchesInView값을 `false`로 할당해줌으로써 해당 문제를 해결하였다. 제스처를 인식한 후에도 Gesture Recognizer의 패턴과는 무관하게 터치 정보들을 뷰에 전달할 수 있게 되었다.

### 2. 메모장에 텍스트가 없는 경우 Crash나는 문제

* `상황` 메모장에 linebreak가 1개일 때 Crash가 나는 현상이 나타났다. 아래는 모든 메모를 지웠을 경우 Crash가 나는 상황이다.
* ![](https://i.imgur.com/FcRbJJu.gif)
* `이유` 배열을 조회할 때 존재하지 않는 인덱스를 조회할 경우 앱이 죽어버리는 상황이였던 것이다.
* `해결` 따라서 인덱스를 안전하게 조회하도록 subscript를 extension 해주어 조회가 불가능한 상황에 맞게 대처할 수 있도록 해결하였다.
    ```swift
    extension Collection {
        subscript (safe index: Index) -> Element? {
            return indices.contains(index) ? self[index] : nil
        }
    }
    ```

### 3. iPad에서 UIAlertController의 actionSheet 사용시 발생하는 오류

> 오류메세지

* UIActivityViewController를 present를 해주려는데 아래와 같은 오류메세지가 떴다.
```
Thread 1: "Your application has presented a UIAlertController (<UIAlertController: 0x10d813a00>) of style UIAlertControllerStyleActionSheet from CloudNotes.SplitViewController (<CloudNotes.SplitViewController: 0x11f7068f0>).
The modalPresentationStyle of a UIAlertController with this style is UIModalPresentationPopover. 
You must provide location information for this popover through the alert controller's popoverPresentationController.
You must provide either a sourceView and sourceRect or a barButtonItem. 
If this information is not known when you present the alert controller, you may provide it in the UIPopoverPresentationControllerDelegate method -prepareForPopoverPresentation."
```
* 간단히 해석하자면 iPad에서 액션시트를 present를 할 경우 모달스타일이 UIModalPresentationPopover이고, 이걸 사용할 때는 barButtonItem 또는 해당 창의 대한 위치를 설정해주어야 한다고 되어있다.
* 따라서 설정해주어야 하는 것은 2가지중 하나이다.
    * 필수적으로 sourceView 지정해주기
    * [popoverPresentationController](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621428-popoverpresentationcontroller)에 sourceRect 또는 barButtonItem 할당해주기

> 해결 방법

얼럿을 present 해주기 전에 다음과 같은 if문을 추가해주자!

* UIBarButtonItem에 추가해주는 방법
```swift
// UIViewController extension 내부...
if let popoverController = activityViewController.popoverPresentationController {
    popoverController.sourceView = self.splitViewController?.view
    popoverController.barButtonItem = sender // 메소드 내부라서 파라미터로 barButtonItem 전달받아 할당해주었다.
}
```
* 위치를 정해주는 방법
```swift
if let popoverController = activityViewController.popoverPresentationController {
    popoverController.sourceView = self.splitViewController?.view // present할 뷰 지정
    popoverController.sourceRect = CGRect( // 뷰의 정 가운데 위치로 지정
        x: self.splitViewController?.view.bounds.midX,
        y: self.splitViewController?.view.bounds.midY,
        width: 0,
        height: 0
    )
    popoverController.permittedArrowDirections = [] // 화살표를 빈배열로 대입
}
```

* ### 4. download가 끝나는 시점에 뷰를 업데이트 하기

> 다운로드가 끝난 후 CoreData를 fetch를 하고 TableView를 reload를 해주고 싶었으나 실패했었다.

* `이유` 파일이 여러개가 존재하여, 여러개의 파일을 다운로드 하기 위해 반복문을 돌리고 있었으나, fetch와 reload를 for-in문 내부에서 해주고 있어서, 뷰가 업데이트 될 때가 있고, 안되기도 하는 현상이 나타났다.
</br>
* `해결` 그래서 `for-in문이 종료된 시점`에 `fetch`를 하고 view를 reload를 해주기 위해, 다운로드가 모두 완료되는 시점을 `DispatchGroup`를 활용하여 `추적`하고, 반복문에서 시작되었던 다운로드 작업이 모두 끝나게 되면 아래 뷰를 다시 설정하도록 코드를 수정하였다.

```swift
func download(_ tableViewController: NotesViewController?) {
    let group = DispatchGroup() // 그룹 생성
    for fileName in fileNames {
        let destURL = applicationSupportDirectoryURL.appendingPathComponent(fileName)
        let destination: (URL, HTTPURLResponse) -> URL = { _, _ in
            return destURL
        }
        group.enter() // 작업 시작
        client?.files.download(path: fileName, overwrite: true, destination: destination)
            .response { _, error in
                if let error = error {
                    print(error)
                }
                group.leave() // 작업 끝
            }
    }
    group.notify(queue: .main) { // 모든 작업이 끝난다면 ...
        PersistentManager.shared.setUpNotes()
        tableViewController?.tableView.reloadData()
        tableViewController?.stopActivityIndicator()
    }
}
```

### 5. 접근성을 위해 Accessibility Inspector를 활용

![](https://i.imgur.com/VP2HGaV.png)

* Accessibility Inspector를 활용하여 접근성을 위해 Run Audit을 통해 개선할 항목들이 없는지 검수하였다.
* 그리고 VoiceOver를 직접 실행해서 테스트해보며 부족한 부분이 있는지 확인해보았다.
* 다이나믹 타입의 경우도 텍스트 크기가 유연한지 검수하였다.

<br>

## 🤔 고민한 점

### 1. 키보드 가림현상 개선 및 편집모드 종료 구현
* NotificationCenter를 활용하여 키보드가 화면에 표시될 때 UITextView도 키보드의 높이만큼 contentInset을 조정하도록 구현하였다.
* 편집을 끝낸 후 다른 메모를 눌렀을 때 편집모드를 종료할 수 있도록 구현했다. UITapGestureRecognizer를 활용하여 사용자가 텍스트뷰가 아닌 다른 부분을 터치했을 때 endEditing 메소드를 호출하도록 하였다.

### 2. 실시간으로 수정된 메모가 UITableView에 반영되도록 구성
* 실시간 반영을 위해 UITextViewDelegate를 활용하여 UITextView가 수정될 때 마다 데이터를 수정하고, UITableView도 업데이트하도록 기능을 구현하였다.

### 3. Crash를 방지
* 존재하지않는 인덱스를 조회했을 때 Crash가 나지 않도록 subscript를 활용하여 Crash가 발생하지 않도록 구현하였다.

```swift
extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
```

### 4. Dynamic Type
* UILabel, UITextView에 실시간으로 글씨 크기를 조정할 수 있도록 다이나믹 폰트 설정 및 Automatically Adjusts Font 기능을 활성화 해주었다.

### 5. 메모를 터치했을 때 secondary 뷰컨에 상세 메모를 표시하도록 구현
* MemoListViewController의 UITableViewDelegate 메서드 didSelectRowAt에서 SplitViewController의 present메서드를 통해 눌린 테이블뷰 셀의 indexPath를 활용하였다.
* indexPath로 SplitViewController가 가지고있는 Memo 배열 타입의 데이터 중에서 해당되는 데이터를 골라서 MemoDetailViewController의 text view를 업데이트한다. 


### 6. 사용자 친화적인 UI를 구현

* 최근에 작성, 수정하였던 메모가 상단으로 올라올 수 있도록 메모 리스트의 정렬을 날짜를 기준으로 내림차순으로 정렬
* 어떤 메모를 선택해서 작성하고 있는지 한눈에 보기 편하도록 작성하고 있는 Cell을 계속 Select 되도록 구현
* 작성하는 도중 날짜가 업데이트 되면, 상단으로 이동하면서 Select도 상단으로 이동.
* 메모를 추가했을 때 추가한 새로운 메모를 Select 되도록 구현
* 메모를 삭제했을 때, 삭제한 부분 이후 메모를 자동으로 Select 되도록 구현
* 스와이프 및 더보기 버튼 터치시 보여지는 액션버튼이 단순 텍스트가 아닌 아이콘이 표기되도록 구현
* Share를 터치하여 UIActivityViewController가 present 되었을 때 화면 회전 시에도 컨트롤러가 중앙에 계속 위치할 수 있도록 구현

### 7. 코어데이터를 관리하는 매니저 타입 구현

* 메모의 CRUD를 구현 및 View에 보여줄 데이터를 관리할 수 있는 `PersistentManager` 구현
* fetch를 할 때 `Predicate`, `Sort` 등을 유연하게 할 수 있도록 파라미터 별도 구현

### 8. 제목과 본문의 폰트를 다르게 하여 구분하는 기능 구현
* `AttributtedString`을 사용하여 TextView의 제목과 본문의 폰트를 다르게 하여 사용자가 보기에 편하도록 구현
* textView의 delegate 메서드(`shouldChangeTextIn`)와 textView의 `typingAttributes` 프로퍼티를 사용하여 입력중에도 제목과 본문에 맞는 폰트가 적용되도록 구현


### 9. 업로드 시점

* 업로드 하는 시점을 정할 때 고려한 것은 너무 빈번하게 업로드를 하지 않아야 하며, 앱이 의도치 않게 종료되어도 어느정도 방어가 되어야 한다는 점이었다. 
* 처음에는 텍스트뷰에 변화가 일어날 때마다 하려고 하였으나 너무 빈번하게 일어날 것으로 보였다. 그래서 종료할 때 하려고 하니 의도치 않은 종료에 전혀 방어가 되지 않았다. 
* 여러 고민을 한 결과 키보드를 내릴 때 마다 업로드를 하도록 하여 업로드가 빈번하게 일어나지 않도록 하였고 의도치 않게 종료되어도 방어를 할 수 있도록 하였다.

### 10. 다운로드의 시점

* 다운로드 시점은 처음에 사용자가 로그인을 성공하는 시점에 dropbox의 데이터를 다운로드 하여 보여주는 주도록 구현하길 원했다. 그래서 인증이 완료 되고 authResult(인증결과)가 success가 되면 download를 하도록 하였다. 
* 또한, 다운로드는 비동기로 진행이 되기 떄문에 DispatchGroup을 사용하여 다운로드가 완료되면 앱에 데이터를 뿌려주고 테이블뷰를 업데이트 하도록 구현하였다.

### 11. 다운로드가 진행중일 때 뷰의 상태

* 다운로드가 진행될 동안 뷰는 아무것도 보여주지 않게 된다. 
* 로딩중이라는 것을 사용자에게 알려주기 위해서 ActivityIndicator를 사용하였다.
* 다운로드를 요청하고 ActivityIndicator를 사용자에게 보여주도록 하고 다운로드가 모두 완료되면 ActivityIndicator는 종료되며 데이터를 사용자에게 보여주도록 구현하였다.

### 12. 검색 기능

* 검색어를 입력할 때마다 검색어에 해당하는 메모를 `실시간`으로 보여줄 수 있도록 `NSPredicate`를 활용하여 fetch하는 기능을 추가
* 검색어가 `빈 문자열("")`이라면 다시 메모의 전체목록을 보여줄 수 있도록 구현
    
### 13. 지역화 

* `언어` 영어를 기본설정으로 하고 한국어에 대해서도 다국어화를 지원하도록 구현
* `날짜` 시간은 시스템 시간을 따르도록 하고, 날짜 형식은 언어에 따라 포맷을 변경되도록 구현
    
### 14. 접근성
    
* 우측 메모 상세 내용의 경우 VoiceOver가 리스트를 읽은 후, 텍스트를 바로 읽어주는 것을 확인하고, `메모 내용`이라는 `accessibilityLabel`을 추가하여, 메모 텍스트를 읽기 전에 좀 더 화면의 구성요소를 이해하기 쉽도록 구현
* View의 텍스트 요소들에 `Dynamic Type`을 적용하여 사용자가 원하는 사이즈로 텍스트 크기를 설정할 수 있도록 유연성을 제공

<br>

## ⌨️ 키워드

- `UISplitViewController`
- `DateFormatter` `Locale` `TimeZone`
- `UITapGestureRecognizer`
- `subscript` `Collection`
- `SceneDelegate`
- `NavigationItem` `UIBarButtonItem`
- `UITextView`
    - `typingAttributes`
    - `UITextViewDelegate`
- `Core Data` `NSPersistentCloudKitContainer` `NSEntityDescription`
    - `NSFetchRequest` `NSPredicate` `NSSortDescriptor`
    - `NSManagedObject` 
- `NSMutableAttributedString`
- `UIActivityViewController` `UIAlertController`
    - `popoverPresentationController`
- `UITableView`
    - `UISwipeActionsConfiguration` `UIContextualAction`
    - `insertRows` `selectRow` `deleteRows`
    - `UITableViewCell`
        - `setSelected` `selectedBackgroundView`
- `viewWillTransition`
- `UIFont`
    - `UIFontMetrics` `UIFontDescriptor`
- `flatMap`
- `Swift Package Manager`
- `SwifryDropbox`
    - `DispatchGroup`
    - `FileManager`
- `UIActivityIndicatorView`
- `UISearchController`
- `Localization`
    - `NSLocalizedString`
- `Accessibility` `Dynamic Type` `VoiceOver`
    - `Accessibility Inspector`
- `Lite Mode` `Dark Mode`
