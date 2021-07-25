# Network Port Controller
### Developed by: [@leonardob0rges](https://github.com/leonardob0rges)
   
The ***Network Port Controller*** is a shellscript that uses Linux Firewall UFW, to set **rules** *as allow or deny determined ports*, and do certain things based on the option chosen:

```
[01] allow PORT     [04] enable UFW     [07] reset UFW
[02] deny PORT      [05] disable UFW    [08] ...
[03] status UFW     [06] reload UFW     [09] Exit
```

--------------------------------------------------------------------------
![netportcontrol](https://user-images.githubusercontent.com/76793724/125192868-3fac0100-e220-11eb-8eb1-9410a95a7310.jpg)

--------------------------------------------------------------------------

## How to use:
First if you don't have UFW installed, in shell run this:

```
sudo apt-get install ufw
```

Now clone this repositorie with:

```
git clone https://github.com/leonardob0rges/NetworkPortController
```

Go to the repo folder and give the script permission:

```
cd NetworkPortController && chmod +x netportcontrol.sh
```
You can run this program in bash, on several Linux distros, such as: **Ubuntu, Linux Mint, Arch Linux and Debian.**

To run, type this:
```
bash netportcontrol.sh
```

Or this:
```
./netportcontrol.sh
```
