import UIKit

class NotesViewController: UITableViewController {
    private enum Constant {
        static let navigationTitle = "메모"
        static let lastModified = "lastModified"
        static let id = "id"
        static let deleteIconName = "trash.fill"
        static let shareIconName = "square.and.arrow.up"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigationItem()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(NotesCell.self, forCellReuseIdentifier: NotesCell.identifier)
    }
    
    private func setUpNavigationItem() {
        navigationItem.title = Constant.navigationTitle
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(tappedAddButton)
        )
    }
}

// MARK: - Add
extension NotesViewController {
    @objc private func tappedAddButton() {
        let newNote: [String : Any] = [
            Constant.lastModified: Date().timeIntervalSince1970,
            Constant.id: UUID()
        ]
        PersistentManager.shared.insert(items: newNote)
        insertCell()
    }
    
    private func insertCell() {
        guard let splitVC = self.splitViewController as? SplitViewController,
              let newData = PersistentManager.shared.fetch()?.first else {
            return
        }
        PersistentManager.shared.insertNote(newData)
        splitVC.present(at: .zero)
        let newIndexPath = IndexPath(row: .zero, section: .zero)
        tableView.insertRows(at: [newIndexPath], with: .fade)
        tableView.selectRow(at: newIndexPath, animated: true, scrollPosition: .middle)
    }
}

// MARK: - Update
extension NotesViewController {
    func updateData(at index: Int) {
        guard self.tableView.numberOfRows(inSection: .zero) != .zero else {
            return
        }
        tableView.reloadRows(at: [IndexPath(row: index, section: .zero)], with: .none)
        tableView.selectRow(at: IndexPath(row: .zero, section: .zero), animated: false, scrollPosition: .middle)
    }
    
    func moveCell(at index: Int) {
        let newIndexPath = IndexPath(row: .zero, section: .zero)
        tableView.moveRow(
            at: IndexPath(row: index, section: .zero),
            to: newIndexPath
        )
        tableView.selectRow(at: newIndexPath, animated: false, scrollPosition: .middle)
    }
}

// MARK: - DataSource
extension NotesViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PersistentManager.shared.notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: NotesCell.identifier,
            for: indexPath
        ) as? NotesCell else {
            return UITableViewCell()
        }
        cell.configure(with: PersistentManager.shared.notes[safe: indexPath.row])
        return cell
    }
}

// MARK: - Delegate
extension NotesViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let splitVC = self.splitViewController as? SplitViewController else {
            return
        }
        splitVC.present(at: indexPath.row)
    }
    
    override func tableView(
        _ tableView: UITableView,
        trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath
    ) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: nil) { _, _, completeHandeler in
            self.deleteCell(indexPath: indexPath)
            completeHandeler(true)
        }
        deleteAction.image = UIImage(systemName: Constant.deleteIconName)
        
        let shareAction = UIContextualAction(style: .normal, title: nil) { _, _, completeHandeler in
            self.showActivityView(at: indexPath.row)
            completeHandeler(true)
        }
        shareAction.image = UIImage(systemName: Constant.shareIconName)
        shareAction.backgroundColor = .systemBlue
        
        return UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
    }
    
    private func showActivityView(at index: Int) {
        self.showActivityViewController(data: PersistentManager.shared.notes[index].body ?? "")
    }
    
    // MARK: - Delete
    func deleteCell(indexPath: IndexPath) {
        guard let splitVC = self.splitViewController as? SplitViewController else {
            return
        }
        let item = PersistentManager.shared.removeNote(at: indexPath.row)
        PersistentManager.shared.delete(item)
        splitVC.clearNoteTextView()
        tableView.deleteRows(at: [indexPath], with: .fade)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            let index = indexPath.row == .zero ? .zero : indexPath.row - 1
            let newindexPath = IndexPath(row: index, section: .zero)
            splitVC.present(at: index)
            guard self.tableView.numberOfRows(inSection: .zero) != .zero else {
                return
            }
            self.tableView.selectRow(at: newindexPath, animated: true, scrollPosition: .middle)
        }
    }
}