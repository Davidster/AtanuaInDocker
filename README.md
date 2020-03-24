Run [Atanua](https://sol.gfxile.net/atanua) on a modern macbook with the magic of Docker!

## Installation

### 1. Install docker

https://docs.docker.com/docker-for-mac/install/

### 2. Install homebrew:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### 3. Install socat and Xquartz:

```
brew install socat
brew cask install xquartz
```

### 4. Run the startup script:

#### 4.1. Download this project's files
  
```
brew install wget
cd ~
wget https://github.com/Davidster/AtanuaInDocker/archive/master.zip
unzip master.zip
cd AtanuaInDocker-master
```

#### 4.2. Open up a terminal and navigate to this project's folder
#### 4.3. Run the following command:

```
./run.sh
```

## Note

**When saving / loading atanua project files, make sure to use the mounted documents folder 
or else you will lose your work when you exit the program**

![Documents folder location](./saveLocation.png)

## Credits

Atanua Open Source Project: https://github.com/jarikomppa/atanua

Running GUI’s with Docker on Mac OS X by Nils De Moor: https://cntnr.io/running-guis-with-docker-on-mac-os-x-a14df6a76efc