
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

### Change the default path for output (Mandatory):

In line 116 you have to change the default path. DONT change the variable "$folder".

```
# CHANGE THE PATH!!
cd /set/your/default/path/"$folder" || echo -e "\e[1m\e[31Path not found, try again.\e[0m\e[0m" | exit
```

### Changing the private ip for decoy (optional):

In line 120 you have to change your private ip if you want to use the Decoy. Like the following example:

```
# PRIVATES IPS! CHANGE IT FOR YOUR PREFENCE

# my_ip='10.2.65'
# spoof_ips="-D $my_ip.192 $my_ip.87 $my_ip.183 $my_ip.213 $my_ip.84 $my_ip.182 $my_ip.23 $my_ip.145"

```

### You can also change or add the Nmap scan for fit your necessities.



## ✍️ Authors <a name = "authors"></a>

- [@l1nk](https://github.com/l1nk404) - Idea & Initial work

