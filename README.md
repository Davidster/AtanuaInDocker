Run [Atanua](https://sol.gfxile.net/atanua) on a modern macbook with the magic of Docker!

## Installation

You will need approximately 5 GB to install the dependencies.

### 1. Install docker

https://docs.docker.com/docker-for-mac/install/

To check that the install worked after you're done, run the following command

```
docker --version
```

### 2. Install homebrew:

If you're not sure, check if you have homebrew installed

```
homebrew --version
```

If you do not have it, install with the following command


```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### 3. Install socat and Xquartz:

```
brew install socat
brew cask install xquartz
```

### 4. Run the startup script:

Before continuing further, make sure to restart your computer for xquartz to be ready to use.

After restarting you should start Xquartz and go into `Preferences`, then to the `Security` tab and check `Allow connections from network clients`

#### 4.1. Download this project's files
  
```
brew install wget
cd ~
wget https://github.com/Davidster/AtanuaInDocker/archive/master.zip
unzip master.zip
cd AtanuaInDocker-master
```

#### 4.2. Open up a terminal and navigate to this project's folder

#### 4.3. Start docker

Open the docker application, after doing so you should see little whale icon on the top bar. When it stabilizes it docker should be ready.

#### 4.4. Run the following command:

```
./run.sh
```

If you get an error that says soething like "cannot open display", try to restart your computer and re-run this script.

## Note

**When saving / loading atanua project files, make sure to use the mounted documents folder 
or else you will lose your work when you exit the program. The resulting files will be saved to
the documents folder where the aforementioned run.sh program is installed.**

![Documents folder location](./saveLocation.png)

## Credits

Atanua Open Source Project: https://github.com/jarikomppa/atanua

Running GUI’s with Docker on Mac OS X by Nils De Moor: https://cntnr.io/running-guis-with-docker-on-mac-os-x-a14df6a76efc
