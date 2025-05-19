""# Git Rebase Demo

This repository contains a shell script `rebase-demo.sh` that demonstrates the basic usage of Git rebase, including conflict resolution.

---

## 🚀 **Setup Instructions**

1. Clone the repository:

   ```bash
   git clone <repository-url>
   cd git-rebase-demo
   ```

2. Give execute permission to the script:

   ```bash
   chmod +x rebase-demo.sh
   ```

3. Run the script:

   ```bash
   ./rebase-demo.sh
   ```

---

## 📌 **Script Walkthrough**

Below is a breakdown of what each step in the script does:

### **1️⃣ Initialize Git Repository**

* Creates a folder `git-rebase-demo`.
* Initializes a new Git repository inside it.

### **2️⃣ Create Master Branch and Initial Commit**

* Adds `README.md` with initial content.
* Makes the first commit on `master`.

### **3️⃣ Create a New Branch (feature)**

* A new branch named `feature` is created from `master`.

### **4️⃣ Make Changes in the Feature Branch**

* Adds additional content to `README.md`.
* Commits the changes.

### **5️⃣ Switch Back to Master and Make Changes**

* Switches back to `master`.
* Adds different content to `README.md` and commits it.

### **6️⃣ Attempt to Rebase 'feature' onto 'master'**

* Switches back to the `feature` branch.
* Tries to rebase with `master`.
* If conflicts are detected, a message is shown.

### **7️⃣ Resolve Conflict (Manual Step)**

* If there is a conflict, you need to:

  ```bash
  # Open README.md, resolve the conflict manually
  git add README.md
  git rebase --continue
  ```

* If you want to cancel the rebase:

  ```bash
  git rebase --abort
  ```

### **8️⃣ Final Push (Optional)**

* If rebase is successful, you can push your changes:

  ```bash
  git push origin feature
  ```

---

## 📝 **Notes**

* This script is for demonstration purposes.
* Conflicts are resolved manually when prompted.
* You can extend this script to handle more complex rebases.

---

## 🤝 **Contributing**

Feel free to fork this repository and submit PRs with improvements!

---

## 🔍 **License**

This project is licensed under the MIT License. ""
