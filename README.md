# ๐ย ๋๊ธฐํ ๋ฉ๋ชจ์ฅ

1. ํ๋ก์ ํธ ๊ธฐ๊ฐ: 2022.02.07 - 2022.02.25

<br>

## ๐ย ๋ชฉ์ฐจ
- [๐ฑ ๊ตฌํ ํ๋ฉด](#-๊ตฌํ-ํ๋ฉด)
- [๐ ๊ตฌํ ๋ด์ฉ](#-๊ตฌํ-๋ด์ฉ)
- [๐ Trouble Shooting](#-Trouble-Shooting)
- [๐ค ๊ณ ๋ฏผํ ์ ](#-๊ณ ๋ฏผํ-์ )
- [โจ๏ธ ํค์๋](#-ํค์๋)

<br>

## ๐ฑ ๊ตฌํ ํ๋ฉด
| ๊ธฐ๊ธฐ ์ข๋ฅ | ๊ฐ๋ก ํ๋ฉด | ์ธ๋ก ํ๋ฉด | ๊ฒ์ ํ๋ฉด |
| :---: | :---: | :---: | :---: |
| **์์ดํจ๋** | <img src="https://user-images.githubusercontent.com/90945013/162011282-4e725401-7e8a-46b1-91a8-b94a0ab946b2.png" width="300"> | <img src="https://user-images.githubusercontent.com/90945013/162011730-934309cc-bed4-421b-8b04-f98e24c57dd3.png" width="300"> | <img src="https://user-images.githubusercontent.com/90945013/162015722-d68c6978-4fce-4f03-bedd-29d974fd4ca9.png" width="300"> |
| **๊ธฐ๊ธฐ ์ข๋ฅ** |**๋ฉ๋ชจ ๋ชฉ๋กํ๋ฉด** | **๋ฉ๋ชจ ์์ธํ๋ฉด**  | **๊ฒ์ ํ๋ฉด** |
| **์์ดํฐ** | <img src="https://user-images.githubusercontent.com/90945013/162012615-7ad5beaa-1288-4f41-b7f2-9b41f846d13d.png" width="300"> | <img src="https://user-images.githubusercontent.com/90945013/162012641-eaa50528-8cca-4e00-b734-45b87da2a2cf.png" width="300"> | <img src="https://user-images.githubusercontent.com/90945013/162015476-4ecbd388-1310-443d-aa1b-08c0297768b7.png" width="300"> |

<br>

## ๐ ๊ตฌํ ๋ด์ฉ
- Split View Controller๋ฅผ ํ์ฉํ์ฌ ํ๋ฉด์ ๋๋ ์ ์๋๋ก ๊ตฌํ
- Date Formatter์ ํ์ฉํ์ฌ ๋ ์ง๋ฅผ ์ง์ญ ๋ฐ ๊ธธ์ด๋ณ ํํ ํ๋๋ก ๊ตฌํ
- TextView๋ฅผ ํ์ฉํ์ฌ ์ฌ์ฉ์์ ์๋ ฅ์ ๋ฐ์ ์ ์๋๋ก ๊ตฌํ
- TextViewDelegate๋ฅผ ํ์ฉํ์ฌ UITextView๊ฐ ์์ ๋  ๋ ๋ง๋ค ๋ฐ์ดํฐ๋ฅผ ์์ ํ๋๋ก ๊ตฌํ
- ์ฝ์ด๋ฐ์ดํฐ๋ฅผ ์ฌ์ฉํ์ฌ ๋ฐ์ดํฐ๋ฅผ Local์ ์ ์ฅํ๊ณ  ์ฝ๋๋ก ๊ตฌํ
- ํ์ด๋ธ๋ทฐ์์ ์ค์์ดํ์ ํ์ฉํ ์ญ์  ๋ฐ ๊ณต์  ๊ธฐ๋ฅ ๊ตฌํ
- ์์กด์ฑ ๊ด๋ฆฌ๋๊ตฌ๋ฅผ ์ฌ์ฉํ์ฌ Dropbox๋ฅผ ์ฐ๋ํ๊ณ  ๋ฐ์ดํฐ๋ฅผ ์๊ฒฉ์ ์ ์ฅ
- AttributedString์ ์ฌ์ฉํ์ฌ ์ ๋ชฉ๊ณผ ๋ณธ๋ฌธ์ ํฐํธ๋ฅผ ๋ค๋ฅด๊ฒ ํ์ฌ ๊ตฌ๋ถํ๋ ๊ธฐ๋ฅ ๊ตฌํ
- SearchController๋ฅผ ํ์ฉํ์ฌ ๋ฉ๋ชจ์ ์ ๋ชฉ๊ณผ ๋ณธ๋ฌธ์ ํฌํจ๋ ๋ฌธ์๋ฅผ ๊ฒ์ํ๋ ๊ธฐ๋ฅ ๊ตฌํ
- ๋ฐฐ๊ฒฝ์, ๊ธ์์ ๋ฑ์ ์์คํ ์ปฌ๋ฌ๋ฅผ ๊ณ ๋ คํ์ฌ ๋ผ์ดํธ๋ชจ๋ / ๋คํฌ๋ชจ๋ ๊ฐ๋ฅ ํ๋๋ก ๊ตฌํ
- ์ ๊ทผ์ฑ์ ๊ณ ๋ คํ์ฌ Dynamic Type, Voice Over๊ฐ ์ํํ๊ฒ ๋์ํ๋๋ก ๊ตฌํ
- ๋ค๊ตญ์ด์ฒ๋ฆฌ, ๋ ์ง, ์ฝ๋ ๋ฐฉํฅ ๋ฑ ์ง์ญํ๋ฅผ ํตํด ๋ค์ํ ์ฌ์ฉ์๊ฐ ๋ถํธํจ์ด ์๋๋ก ๊ตฌํ

<br>


## ๐ Trouble Shooting

### 1. Cell์ Select๊ฐ ๋์ํ์ง ์๋ ๋ฌธ์ 

* `์ํฉ` GestureRecognizer๋ฅผ ViewController์ ์ถ๊ฐํ์ UITableView์ Select๊ฐ ๋์ง ์๋ ํ์์ด ๋ํ๋ฌ๋ค.
* ![](https://i.imgur.com/4Vf9LkM.gif)
* `์ด์ ` ๋ฑ๋กํ GestureRecognizer์ ํ๋กํผํฐ์ธ cancelsTouchesInView๊ฐ ๊ธฐ๋ณธ๊ฐ์ผ๋ก true๋ก ์ค์ ๋์ด์์ด ๋ฌธ์ ์๋ค. `cancelsTouchesInVie`w๊ฐ `true`์ธ ๊ฒฝ์ฐ์๋ ์ ์ค์ฒ๋ฅผ ์ธ์ํ ํ์ ๋๋จธ์ง ํฐ์น์ ๋ณด๋ค์ ๋ทฐ๋ก ์ ๋ฌํ์ง ์๊ณ  ์ทจ์๋์๊ธฐ ๋๋ฌธ์ UITableView์ Select๊ฐ ๋จน์ง ์์๋ ๊ฒ์ด๋ค.
* `ํด๊ฒฐ` ๋ฐ๋ผ์ cancelsTouchesInView๊ฐ์ `false`๋ก ํ ๋นํด์ค์ผ๋ก์จ ํด๋น ๋ฌธ์ ๋ฅผ ํด๊ฒฐํ์๋ค. ์ ์ค์ฒ๋ฅผ ์ธ์ํ ํ์๋ Gesture Recognizer์ ํจํด๊ณผ๋ ๋ฌด๊ดํ๊ฒ ํฐ์น ์ ๋ณด๋ค์ ๋ทฐ์ ์ ๋ฌํ  ์ ์๊ฒ ๋์๋ค.

### 2. ๋ฉ๋ชจ์ฅ์ ํ์คํธ๊ฐ ์๋ ๊ฒฝ์ฐ Crash๋๋ ๋ฌธ์ 

* `์ํฉ` ๋ฉ๋ชจ์ฅ์ linebreak๊ฐ 1๊ฐ์ผ ๋ Crash๊ฐ ๋๋ ํ์์ด ๋ํ๋ฌ๋ค. ์๋๋ ๋ชจ๋  ๋ฉ๋ชจ๋ฅผ ์ง์ ์ ๊ฒฝ์ฐ Crash๊ฐ ๋๋ ์ํฉ์ด๋ค.
* ![](https://i.imgur.com/FcRbJJu.gif)
* `์ด์ ` ๋ฐฐ์ด์ ์กฐํํ  ๋ ์กด์ฌํ์ง ์๋ ์ธ๋ฑ์ค๋ฅผ ์กฐํํ  ๊ฒฝ์ฐ ์ฑ์ด ์ฃฝ์ด๋ฒ๋ฆฌ๋ ์ํฉ์ด์๋ ๊ฒ์ด๋ค.
* `ํด๊ฒฐ` ๋ฐ๋ผ์ ์ธ๋ฑ์ค๋ฅผ ์์ ํ๊ฒ ์กฐํํ๋๋ก subscript๋ฅผ extension ํด์ฃผ์ด ์กฐํ๊ฐ ๋ถ๊ฐ๋ฅํ ์ํฉ์ ๋ง๊ฒ ๋์ฒํ  ์ ์๋๋ก ํด๊ฒฐํ์๋ค.
    ```swift
    extension Collection {
        subscript (safe index: Index) -> Element? {
            return indices.contains(index) ? self[index] : nil
        }
    }
    ```

### 3. iPad์์ UIAlertController์ actionSheet ์ฌ์ฉ์ ๋ฐ์ํ๋ ์ค๋ฅ

> ์ค๋ฅ๋ฉ์ธ์ง

* UIActivityViewController๋ฅผ present๋ฅผ ํด์ฃผ๋ ค๋๋ฐ ์๋์ ๊ฐ์ ์ค๋ฅ๋ฉ์ธ์ง๊ฐ ๋ด๋ค.
```
Thread 1: "Your application has presented a UIAlertController (<UIAlertController: 0x10d813a00>) of style UIAlertControllerStyleActionSheet from CloudNotes.SplitViewController (<CloudNotes.SplitViewController: 0x11f7068f0>).
The modalPresentationStyle of a UIAlertController with this style is UIModalPresentationPopover. 
You must provide location information for this popover through the alert controller's popoverPresentationController.
You must provide either a sourceView and sourceRect or a barButtonItem. 
If this information is not known when you present the alert controller, you may provide it in the UIPopoverPresentationControllerDelegate method -prepareForPopoverPresentation."
```
* ๊ฐ๋จํ ํด์ํ์๋ฉด iPad์์ ์ก์์ํธ๋ฅผ present๋ฅผ ํ  ๊ฒฝ์ฐ ๋ชจ๋ฌ์คํ์ผ์ด UIModalPresentationPopover์ด๊ณ , ์ด๊ฑธ ์ฌ์ฉํ  ๋๋ barButtonItem ๋๋ ํด๋น ์ฐฝ์ ๋ํ ์์น๋ฅผ ์ค์ ํด์ฃผ์ด์ผ ํ๋ค๊ณ  ๋์ด์๋ค.
* ๋ฐ๋ผ์ ์ค์ ํด์ฃผ์ด์ผ ํ๋ ๊ฒ์ 2๊ฐ์ง์ค ํ๋์ด๋ค.
    * ํ์์ ์ผ๋ก sourceView ์ง์ ํด์ฃผ๊ธฐ
    * [popoverPresentationController](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621428-popoverpresentationcontroller)์ sourceRect ๋๋ barButtonItem ํ ๋นํด์ฃผ๊ธฐ

> ํด๊ฒฐ ๋ฐฉ๋ฒ

์ผ๋ฟ์ present ํด์ฃผ๊ธฐ ์ ์ ๋ค์๊ณผ ๊ฐ์ if๋ฌธ์ ์ถ๊ฐํด์ฃผ์!

* UIBarButtonItem์ ์ถ๊ฐํด์ฃผ๋ ๋ฐฉ๋ฒ
```swift
// UIViewController extension ๋ด๋ถ...
if let popoverController = activityViewController.popoverPresentationController {
    popoverController.sourceView = self.splitViewController?.view
    popoverController.barButtonItem = sender // ๋ฉ์๋ ๋ด๋ถ๋ผ์ ํ๋ผ๋ฏธํฐ๋ก barButtonItem ์ ๋ฌ๋ฐ์ ํ ๋นํด์ฃผ์๋ค.
}
```
* ์์น๋ฅผ ์ ํด์ฃผ๋ ๋ฐฉ๋ฒ
```swift
if let popoverController = activityViewController.popoverPresentationController {
    popoverController.sourceView = self.splitViewController?.view // presentํ  ๋ทฐ ์ง์ 
    popoverController.sourceRect = CGRect( // ๋ทฐ์ ์  ๊ฐ์ด๋ฐ ์์น๋ก ์ง์ 
        x: self.splitViewController?.view.bounds.midX,
        y: self.splitViewController?.view.bounds.midY,
        width: 0,
        height: 0
    )
    popoverController.permittedArrowDirections = [] // ํ์ดํ๋ฅผ ๋น๋ฐฐ์ด๋ก ๋์
}
```

* ### 4. download๊ฐ ๋๋๋ ์์ ์ ๋ทฐ๋ฅผ ์๋ฐ์ดํธ ํ๊ธฐ

> ๋ค์ด๋ก๋๊ฐ ๋๋ ํ CoreData๋ฅผ fetch๋ฅผ ํ๊ณ  TableView๋ฅผ reload๋ฅผ ํด์ฃผ๊ณ  ์ถ์์ผ๋ ์คํจํ์๋ค.

* `์ด์ ` ํ์ผ์ด ์ฌ๋ฌ๊ฐ๊ฐ ์กด์ฌํ์ฌ, ์ฌ๋ฌ๊ฐ์ ํ์ผ์ ๋ค์ด๋ก๋ ํ๊ธฐ ์ํด ๋ฐ๋ณต๋ฌธ์ ๋๋ฆฌ๊ณ  ์์์ผ๋, fetch์ reload๋ฅผ for-in๋ฌธ ๋ด๋ถ์์ ํด์ฃผ๊ณ  ์์ด์, ๋ทฐ๊ฐ ์๋ฐ์ดํธ ๋  ๋๊ฐ ์๊ณ , ์๋๊ธฐ๋ ํ๋ ํ์์ด ๋ํ๋ฌ๋ค.

</br>

* `ํด๊ฒฐ` ๊ทธ๋์ `for-in๋ฌธ์ด ์ข๋ฃ๋ ์์ `์ `fetch`๋ฅผ ํ๊ณ  view๋ฅผ reload๋ฅผ ํด์ฃผ๊ธฐ ์ํด, ๋ค์ด๋ก๋๊ฐ ๋ชจ๋ ์๋ฃ๋๋ ์์ ์ `DispatchGroup`๋ฅผ ํ์ฉํ์ฌ `์ถ์ `ํ๊ณ , ๋ฐ๋ณต๋ฌธ์์ ์์๋์๋ ๋ค์ด๋ก๋ ์์์ด ๋ชจ๋ ๋๋๊ฒ ๋๋ฉด ์๋ ๋ทฐ๋ฅผ ๋ค์ ์ค์ ํ๋๋ก ์ฝ๋๋ฅผ ์์ ํ์๋ค.

```swift
func download(_ tableViewController: NotesViewController?) {
    let group = DispatchGroup() // ๊ทธ๋ฃน ์์ฑ
    for fileName in fileNames {
        let destURL = applicationSupportDirectoryURL.appendingPathComponent(fileName)
        let destination: (URL, HTTPURLResponse) -> URL = { _, _ in
            return destURL
        }
        group.enter() // ์์ ์์
        client?.files.download(path: fileName, overwrite: true, destination: destination)
            .response { _, error in
                if let error = error {
                    print(error)
                }
                group.leave() // ์์ ๋
            }
    }
    group.notify(queue: .main) { // ๋ชจ๋  ์์์ด ๋๋๋ค๋ฉด ...
        PersistentManager.shared.setUpNotes()
        tableViewController?.tableView.reloadData()
        tableViewController?.stopActivityIndicator()
    }
}
```

### 5. ์ ๊ทผ์ฑ์ ์ํด Accessibility Inspector๋ฅผ ํ์ฉ

![](https://i.imgur.com/VP2HGaV.png)

* Accessibility Inspector๋ฅผ ํ์ฉํ์ฌ ์ ๊ทผ์ฑ์ ์ํด Run Audit์ ํตํด ๊ฐ์ ํ  ํญ๋ชฉ๋ค์ด ์๋์ง ๊ฒ์ํ์๋ค.
* ๊ทธ๋ฆฌ๊ณ  VoiceOver๋ฅผ ์ง์  ์คํํด์ ํ์คํธํด๋ณด๋ฉฐ ๋ถ์กฑํ ๋ถ๋ถ์ด ์๋์ง ํ์ธํด๋ณด์๋ค.
* ๋ค์ด๋๋ฏน ํ์์ ๊ฒฝ์ฐ๋ ํ์คํธ ํฌ๊ธฐ๊ฐ ์ ์ฐํ์ง ๊ฒ์ํ์๋ค.

<br>

## ๐ค ๊ณ ๋ฏผํ ์ 

### 1. ํค๋ณด๋ ๊ฐ๋ฆผํ์ ๊ฐ์  ๋ฐ ํธ์ง๋ชจ๋ ์ข๋ฃ ๊ตฌํ
* NotificationCenter๋ฅผ ํ์ฉํ์ฌ ํค๋ณด๋๊ฐ ํ๋ฉด์ ํ์๋  ๋ UITextView๋ ํค๋ณด๋์ ๋์ด๋งํผ contentInset์ ์กฐ์ ํ๋๋ก ๊ตฌํํ์๋ค.
* ํธ์ง์ ๋๋ธ ํ ๋ค๋ฅธ ๋ฉ๋ชจ๋ฅผ ๋๋ ์ ๋ ํธ์ง๋ชจ๋๋ฅผ ์ข๋ฃํ  ์ ์๋๋ก ๊ตฌํํ๋ค. UITapGestureRecognizer๋ฅผ ํ์ฉํ์ฌ ์ฌ์ฉ์๊ฐ ํ์คํธ๋ทฐ๊ฐ ์๋ ๋ค๋ฅธ ๋ถ๋ถ์ ํฐ์นํ์ ๋ endEditing ๋ฉ์๋๋ฅผ ํธ์ถํ๋๋ก ํ์๋ค.

### 2. ์ค์๊ฐ์ผ๋ก ์์ ๋ ๋ฉ๋ชจ๊ฐ UITableView์ ๋ฐ์๋๋๋ก ๊ตฌ์ฑ
* ์ค์๊ฐ ๋ฐ์์ ์ํด UITextViewDelegate๋ฅผ ํ์ฉํ์ฌ UITextView๊ฐ ์์ ๋  ๋ ๋ง๋ค ๋ฐ์ดํฐ๋ฅผ ์์ ํ๊ณ , UITableView๋ ์๋ฐ์ดํธํ๋๋ก ๊ธฐ๋ฅ์ ๊ตฌํํ์๋ค.

### 3. Crash๋ฅผ ๋ฐฉ์ง
* ์กด์ฌํ์ง์๋ ์ธ๋ฑ์ค๋ฅผ ์กฐํํ์ ๋ Crash๊ฐ ๋์ง ์๋๋ก subscript๋ฅผ ํ์ฉํ์ฌ Crash๊ฐ ๋ฐ์ํ์ง ์๋๋ก ๊ตฌํํ์๋ค.

```swift
extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
```

### 4. Dynamic Type
* UILabel, UITextView์ ์ค์๊ฐ์ผ๋ก ๊ธ์จ ํฌ๊ธฐ๋ฅผ ์กฐ์ ํ  ์ ์๋๋ก ๋ค์ด๋๋ฏน ํฐํธ ์ค์  ๋ฐ Automatically Adjusts Font ๊ธฐ๋ฅ์ ํ์ฑํ ํด์ฃผ์๋ค.

### 5. ๋ฉ๋ชจ๋ฅผ ํฐ์นํ์ ๋ secondary ๋ทฐ์ปจ์ ์์ธ ๋ฉ๋ชจ๋ฅผ ํ์ํ๋๋ก ๊ตฌํ
* MemoListViewController์ UITableViewDelegate ๋ฉ์๋ didSelectRowAt์์ SplitViewController์ present๋ฉ์๋๋ฅผ ํตํด ๋๋ฆฐ ํ์ด๋ธ๋ทฐ ์์ indexPath๋ฅผ ํ์ฉํ์๋ค.
* indexPath๋ก SplitViewController๊ฐ ๊ฐ์ง๊ณ ์๋ Memo ๋ฐฐ์ด ํ์์ ๋ฐ์ดํฐ ์ค์์ ํด๋น๋๋ ๋ฐ์ดํฐ๋ฅผ ๊ณจ๋ผ์ MemoDetailViewController์ text view๋ฅผ ์๋ฐ์ดํธํ๋ค. 


### 6. ์ฌ์ฉ์ ์นํ์ ์ธ UI๋ฅผ ๊ตฌํ

* ์ต๊ทผ์ ์์ฑ, ์์ ํ์๋ ๋ฉ๋ชจ๊ฐ ์๋จ์ผ๋ก ์ฌ๋ผ์ฌ ์ ์๋๋ก ๋ฉ๋ชจ ๋ฆฌ์คํธ์ ์ ๋ ฌ์ ๋ ์ง๋ฅผ ๊ธฐ์ค์ผ๋ก ๋ด๋ฆผ์ฐจ์์ผ๋ก ์ ๋ ฌ
* ์ด๋ค ๋ฉ๋ชจ๋ฅผ ์ ํํด์ ์์ฑํ๊ณ  ์๋์ง ํ๋์ ๋ณด๊ธฐ ํธํ๋๋ก ์์ฑํ๊ณ  ์๋ Cell์ ๊ณ์ Select ๋๋๋ก ๊ตฌํ
* ์์ฑํ๋ ๋์ค ๋ ์ง๊ฐ ์๋ฐ์ดํธ ๋๋ฉด, ์๋จ์ผ๋ก ์ด๋ํ๋ฉด์ Select๋ ์๋จ์ผ๋ก ์ด๋.
* ๋ฉ๋ชจ๋ฅผ ์ถ๊ฐํ์ ๋ ์ถ๊ฐํ ์๋ก์ด ๋ฉ๋ชจ๋ฅผ Select ๋๋๋ก ๊ตฌํ
* ๋ฉ๋ชจ๋ฅผ ์ญ์ ํ์ ๋, ์ญ์ ํ ๋ถ๋ถ ์ดํ ๋ฉ๋ชจ๋ฅผ ์๋์ผ๋ก Select ๋๋๋ก ๊ตฌํ
* ์ค์์ดํ ๋ฐ ๋๋ณด๊ธฐ ๋ฒํผ ํฐ์น์ ๋ณด์ฌ์ง๋ ์ก์๋ฒํผ์ด ๋จ์ ํ์คํธ๊ฐ ์๋ ์์ด์ฝ์ด ํ๊ธฐ๋๋๋ก ๊ตฌํ
* Share๋ฅผ ํฐ์นํ์ฌ UIActivityViewController๊ฐ present ๋์์ ๋ ํ๋ฉด ํ์  ์์๋ ์ปจํธ๋กค๋ฌ๊ฐ ์ค์์ ๊ณ์ ์์นํ  ์ ์๋๋ก ๊ตฌํ

### 7. ์ฝ์ด๋ฐ์ดํฐ๋ฅผ ๊ด๋ฆฌํ๋ ๋งค๋์  ํ์ ๊ตฌํ

* ๋ฉ๋ชจ์ CRUD๋ฅผ ๊ตฌํ ๋ฐ View์ ๋ณด์ฌ์ค ๋ฐ์ดํฐ๋ฅผ ๊ด๋ฆฌํ  ์ ์๋ `PersistentManager` ๊ตฌํ
* fetch๋ฅผ ํ  ๋ `Predicate`, `Sort` ๋ฑ์ ์ ์ฐํ๊ฒ ํ  ์ ์๋๋ก ํ๋ผ๋ฏธํฐ ๋ณ๋ ๊ตฌํ

### 8. ์ ๋ชฉ๊ณผ ๋ณธ๋ฌธ์ ํฐํธ๋ฅผ ๋ค๋ฅด๊ฒ ํ์ฌ ๊ตฌ๋ถํ๋ ๊ธฐ๋ฅ ๊ตฌํ
* `AttributtedString`์ ์ฌ์ฉํ์ฌ TextView์ ์ ๋ชฉ๊ณผ ๋ณธ๋ฌธ์ ํฐํธ๋ฅผ ๋ค๋ฅด๊ฒ ํ์ฌ ์ฌ์ฉ์๊ฐ ๋ณด๊ธฐ์ ํธํ๋๋ก ๊ตฌํ
* textView์ delegate ๋ฉ์๋(`shouldChangeTextIn`)์ textView์ `typingAttributes` ํ๋กํผํฐ๋ฅผ ์ฌ์ฉํ์ฌ ์๋ ฅ์ค์๋ ์ ๋ชฉ๊ณผ ๋ณธ๋ฌธ์ ๋ง๋ ํฐํธ๊ฐ ์ ์ฉ๋๋๋ก ๊ตฌํ


### 9. ์๋ก๋ ์์ 

* ์๋ก๋ ํ๋ ์์ ์ ์ ํ  ๋ ๊ณ ๋ คํ ๊ฒ์ ๋๋ฌด ๋น๋ฒํ๊ฒ ์๋ก๋๋ฅผ ํ์ง ์์์ผ ํ๋ฉฐ, ์ฑ์ด ์๋์น ์๊ฒ ์ข๋ฃ๋์ด๋ ์ด๋์ ๋ ๋ฐฉ์ด๊ฐ ๋์ด์ผ ํ๋ค๋ ์ ์ด์๋ค. 
* ์ฒ์์๋ ํ์คํธ๋ทฐ์ ๋ณํ๊ฐ ์ผ์ด๋  ๋๋ง๋ค ํ๋ ค๊ณ  ํ์์ผ๋ ๋๋ฌด ๋น๋ฒํ๊ฒ ์ผ์ด๋  ๊ฒ์ผ๋ก ๋ณด์๋ค. ๊ทธ๋์ ์ข๋ฃํ  ๋ ํ๋ ค๊ณ  ํ๋ ์๋์น ์์ ์ข๋ฃ์ ์ ํ ๋ฐฉ์ด๊ฐ ๋์ง ์์๋ค. 
* ์ฌ๋ฌ ๊ณ ๋ฏผ์ ํ ๊ฒฐ๊ณผ ํค๋ณด๋๋ฅผ ๋ด๋ฆด ๋ ๋ง๋ค ์๋ก๋๋ฅผ ํ๋๋ก ํ์ฌ ์๋ก๋๊ฐ ๋น๋ฒํ๊ฒ ์ผ์ด๋์ง ์๋๋ก ํ์๊ณ  ์๋์น ์๊ฒ ์ข๋ฃ๋์ด๋ ๋ฐฉ์ด๋ฅผ ํ  ์ ์๋๋ก ํ์๋ค.

### 10. ๋ค์ด๋ก๋์ ์์ 

* ๋ค์ด๋ก๋ ์์ ์ ์ฒ์์ ์ฌ์ฉ์๊ฐ ๋ก๊ทธ์ธ์ ์ฑ๊ณตํ๋ ์์ ์ dropbox์ ๋ฐ์ดํฐ๋ฅผ ๋ค์ด๋ก๋ ํ์ฌ ๋ณด์ฌ์ฃผ๋ ์ฃผ๋๋ก ๊ตฌํํ๊ธธ ์ํ๋ค. ๊ทธ๋์ ์ธ์ฆ์ด ์๋ฃ ๋๊ณ  authResult(์ธ์ฆ๊ฒฐ๊ณผ)๊ฐ success๊ฐ ๋๋ฉด download๋ฅผ ํ๋๋ก ํ์๋ค. 
* ๋ํ, ๋ค์ด๋ก๋๋ ๋น๋๊ธฐ๋ก ์งํ์ด ๋๊ธฐ ๋๋ฌธ์ DispatchGroup์ ์ฌ์ฉํ์ฌ ๋ค์ด๋ก๋๊ฐ ์๋ฃ๋๋ฉด ์ฑ์ ๋ฐ์ดํฐ๋ฅผ ๋ฟ๋ ค์ฃผ๊ณ  ํ์ด๋ธ๋ทฐ๋ฅผ ์๋ฐ์ดํธ ํ๋๋ก ๊ตฌํํ์๋ค.

### 11. ๋ค์ด๋ก๋๊ฐ ์งํ์ค์ผ ๋ ๋ทฐ์ ์ํ

* ๋ค์ด๋ก๋๊ฐ ์งํ๋  ๋์ ๋ทฐ๋ ์๋ฌด๊ฒ๋ ๋ณด์ฌ์ฃผ์ง ์๊ฒ ๋๋ค. 
* ๋ก๋ฉ์ค์ด๋ผ๋ ๊ฒ์ ์ฌ์ฉ์์๊ฒ ์๋ ค์ฃผ๊ธฐ ์ํด์ ActivityIndicator๋ฅผ ์ฌ์ฉํ์๋ค.
* ๋ค์ด๋ก๋๋ฅผ ์์ฒญํ๊ณ  ActivityIndicator๋ฅผ ์ฌ์ฉ์์๊ฒ ๋ณด์ฌ์ฃผ๋๋ก ํ๊ณ  ๋ค์ด๋ก๋๊ฐ ๋ชจ๋ ์๋ฃ๋๋ฉด ActivityIndicator๋ ์ข๋ฃ๋๋ฉฐ ๋ฐ์ดํฐ๋ฅผ ์ฌ์ฉ์์๊ฒ ๋ณด์ฌ์ฃผ๋๋ก ๊ตฌํํ์๋ค.

### 12. ๊ฒ์ ๊ธฐ๋ฅ

* ๊ฒ์์ด๋ฅผ ์๋ ฅํ  ๋๋ง๋ค ๊ฒ์์ด์ ํด๋นํ๋ ๋ฉ๋ชจ๋ฅผ `์ค์๊ฐ`์ผ๋ก ๋ณด์ฌ์ค ์ ์๋๋ก `NSPredicate`๋ฅผ ํ์ฉํ์ฌ fetchํ๋ ๊ธฐ๋ฅ์ ์ถ๊ฐ
* ๊ฒ์์ด๊ฐ `๋น ๋ฌธ์์ด("")`์ด๋ผ๋ฉด ๋ค์ ๋ฉ๋ชจ์ ์ ์ฒด๋ชฉ๋ก์ ๋ณด์ฌ์ค ์ ์๋๋ก ๊ตฌํ
    
### 13. ์ง์ญํ 

* `์ธ์ด` ์์ด๋ฅผ ๊ธฐ๋ณธ์ค์ ์ผ๋ก ํ๊ณ  ํ๊ตญ์ด์ ๋ํด์๋ ๋ค๊ตญ์ดํ๋ฅผ ์ง์ํ๋๋ก ๊ตฌํ
* `๋ ์ง` ์๊ฐ์ ์์คํ ์๊ฐ์ ๋ฐ๋ฅด๋๋ก ํ๊ณ , ๋ ์ง ํ์์ ์ธ์ด์ ๋ฐ๋ผ ํฌ๋งท์ ๋ณ๊ฒฝ๋๋๋ก ๊ตฌํ
    
### 14. ์ ๊ทผ์ฑ
    
* ์ฐ์ธก ๋ฉ๋ชจ ์์ธ ๋ด์ฉ์ ๊ฒฝ์ฐ VoiceOver๊ฐ ๋ฆฌ์คํธ๋ฅผ ์ฝ์ ํ, ํ์คํธ๋ฅผ ๋ฐ๋ก ์ฝ์ด์ฃผ๋ ๊ฒ์ ํ์ธํ๊ณ , `๋ฉ๋ชจ ๋ด์ฉ`์ด๋ผ๋ `accessibilityLabel`์ ์ถ๊ฐํ์ฌ, ๋ฉ๋ชจ ํ์คํธ๋ฅผ ์ฝ๊ธฐ ์ ์ ์ข ๋ ํ๋ฉด์ ๊ตฌ์ฑ์์๋ฅผ ์ดํดํ๊ธฐ ์ฝ๋๋ก ๊ตฌํ
* View์ ํ์คํธ ์์๋ค์ `Dynamic Type`์ ์ ์ฉํ์ฌ ์ฌ์ฉ์๊ฐ ์ํ๋ ์ฌ์ด์ฆ๋ก ํ์คํธ ํฌ๊ธฐ๋ฅผ ์ค์ ํ  ์ ์๋๋ก ์ ์ฐ์ฑ์ ์ ๊ณต

<br>

## โจ๏ธย ํค์๋

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
