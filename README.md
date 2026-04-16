# 🚫 Simple Site Blocker (Linux)

A simple Bash tool to block and unblock websites using `/etc/hosts`.

Good for:

* Focus / productivity
* Study or work mode
* Digital detox
* Basic parental control

---

## ✨ Features

* Block websites from terminal
* Auto-blocks:

  * `example.com`
  * `www.example.com`
* Unblock websites easily
* List blocked sites
* No dependencies (pure Bash)

---

## ⚙️ Requirements

* Linux
* `sudo` access

---

## 📥 Installation

### With Git

```bash id="g1"
git clone https://github.com/bipulbd08/simple-site-blocker.git
cd simple-site-blocker
```

### Without Git (wget)

```bash id="g2"
wget https://github.com/bipulbd08/simple-site-blocker/archive/refs/heads/main.zip
unzip main.zip
cd simple-site-blocker-main
```

---

### Install tool

```bash id="g3"
sudo cp block.sh /usr/local/bin/block
sudo chmod +x /usr/local/bin/block
```

---

## 🚀 Usage

```bash id="u1"
block add facebook.com
block remove facebook.com
block list
```

---

## 🧠 Work Mode

Create list:

```bash id="u2"
sudo nano /etc/block-work.list
```

Example:

```
facebook.com
youtube.com
instagram.com
```

Enable:

```bash id="u3"
block work-start
```

Disable:

```bash id="u4"
block work-stop
```

---

## ⏰ Auto Schedule (Cron)

```bash id="u5"
crontab -e
```

Add:

```bash id="u6"
0 9 * * * /usr/local/bin/block work-start
0 17 * * * /usr/local/bin/block work-stop
```

---

## ⚠️ Notes

* Uses `/etc/hosts`
* Some sites may need extra domains
* Restart browser if changes don’t apply

---

## 📁 Project Structure

```
simple-site-blocker/
├── block.sh
└── README.md
```

---

## 📄 License

MIT

---

## 🔗 Repo

https://github.com/bipulbd08/simple-site-blocker
