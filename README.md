
<h1 align="center">Nmap auto scan</h1>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/pulls)

</div>

---

<p align="center"> A shell script to make easier use different Nmap features.
  
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Setting up](#built_using)
- [Contributing](../CONTRIBUTING.md)
- [Authors](#authors)


## 🧐 About <a name = "about"></a>

With Nmap Auto Scan you are able to use Nmap for differents type of scan such:
  <ul>
    <li> Host scan;
    <li> Default script scan;
    <li> Service scan;
    <li> Os scan;
  </ul>

And also use useful features like:

  <ul>
    <li> Scripts:
      <ul>
        <li> Vuln;
        <li> Auth;
      </ul>
    <li> Decoy:
    <ul>
      <li> Private IP;
      <li> Random public IP;
    </ul>
    <li> Output;
  </ul>

Without the need to set evertyhing manualy and providing a clear output.

## 🏁 Getting Started <a name = "getting_started"></a>

### Pre requisites
<ul>
  <li>You need to have Nmap installed in your machine.
  <li>Some features of Nmap requires Root permission.
</ul>

### Installing

If you don't have Nmap installed in your computer, just copy the bellow codes to install. Otherwise just skip this step.

```
sudo apt update && sudo apt-get install nmap -y
```



```
git clone https://github.com/L1nk404/auto-nmap-scan 
cd auto-nmap-scan
chmod +x scan.sh
./scan.sh
```


## 🔧 Setting up <a name = "setting"></a>

Now it's time to change the code for your own necessities.


### Changing the private ip for decoy (optional):

At line 94 you might want to change your private ip if you want to personalize the decoy, by default it iS -D 5:

```
decoy_ips="-D 5" # Change this option if you want

```




## ✍️ Authors <a name = "authors"></a>

- [@l1nk](https://github.com/l1nk404) - Idea & Initial work

