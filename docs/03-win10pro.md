# Windows 10 Pro/Education {#win10pro .unnumbered}

This guide shows you how to install RStudio, with required packages, on Windows 10 Pro. 

The best way to do this is by downloading Docker and running RStudio virtually using an environment we have created called `darribas/gdsr:1.0alpha` [@gds_env]. This approach is preferable because it sidesteps potential compatibility issues between RStudio and other software on your computer. 

**Please therefore follow the instructions in [Docker Installation](#winpro_docker_install), even if R/RStudio is already installed on your machine. If you run into problems, go to [Manual Installation](#winpro_manual_install) to install the most recent versions of each program.** 


## Docker Installation {#winpro_docker_install .unnumbered}

### Installing Docker {.unlisted .unnumbered}

#### Requirements {.unlisted .unnumbered}

To be able to complete this guide, your machine will need to meet the following requirements:

1. A stable internet connection
2. ~10GB of space on your hard drive
3. Windows 10 64-bit: Pro, Enterprise, or Education (Build 16299 or later). You can see the full requirements on the official [Docker for Windows page](https://docs.docker.com/docker-for-windows/install/).

<div class="alert alert-danger" style="font-size:120%">
<b>IMPORTANT</b>: <br>
    
If you are not sure what version of Windows you are running, check out this [guide](#windows-version).
    
If you know you don't have Windows 10 Pro, for example you are running Windows 10 Home, please use [this install/run guide](#otherWin).
    
</div>
 
#### Docker install steps {#winpro_docker_install_steps .unlisted .unnumbered}

Once you have everything required ready to go, the first step is to install the Docker Desktop App for Windows. Here are the steps you can follow:

1. Head over to Docker Hub to download a copy of Docker for Windows:

> [https://hub.docker.com/editions/community/docker-ce-desktop-windows/](https://hub.docker.com/editions/community/docker-ce-desktop-windows/)

<img src="figs/chp3/docker_hub.png" width="825" style="display: block; margin: auto;" />
<br>

2. Download a copy of the Docker Desktop (circled in red on the image above). Note this is about 400Mb so, depending on your connection, it might take a little bit.
3. Double click on the file you downloaded (a white cute whale on a blue background) and the "installation wizard" will appear. 
4. Follow the instructions on the installation wizard to authorize the installer and proceed with the install.

You can check the process has completed successfully by following these steps:

1. Open PowelShell from the "Start Menu"

<img src="figs/chp3/powershell.png" width="656" style="display: block; margin: auto;" />
<br>

2. Check Docker is available by printing out the version you have installed:

```shell
docker --version
```

<img src="figs/chp3/docker_version.png" width="598" style="display: block; margin: auto;" />
<br>

Note that you might have installed a slightly different version and that is totally OK. What you want to make sure is that it successfully prints out a version instead of a warning/error message (usually in red).

#### Installing the container {#winpro_docker_gds .unlisted .unnumbered}

Once you have Docker installed and running on your machine, installing everything you need to run Python and associated libraries boils down to the following two steps:

1. Open PowerShell following the same steps as above (you can use the same window as before or a fresh new one).
2. Run (type and hit "Enter") the following command:

```shell
docker pull darribas/gds:5.0
```

<img src="figs/chp3/pull_gds.png" width="614" style="display: block; margin: auto;" />
<br>

You will know this has completed when each line says 'Pull complete'.

<div class="alert alert-info" style="font-size:120%">
<b>IMPORTANT</b>: <br>
    
Make sure you are connected to the internet and it is a stable connection. This step involves the download of large amounts of data (ca. 10GB) so it might take a while. However, it only needs to be run once.
   
</div>

#### Check success {#winpro_success .unlisted .unnumbered}

If everything has gone according to plan, you should see `darribas/gds:5.0` show up on your terminal when you type `docker image ls` (note in the image below there are other containers that are not required, do not worry if you don't have those or slightly different values on the ID and the "CREATED" columns, the important bit is having `darribas/gds:5.0` listed):

<img src="figs/chp3/docker_success.png" width="614" style="display: block; margin: auto;" />
<br>

### Running RStudio Server {#winpro_run .unnumbered}

The following sections cover how to start up the software you have just installed, use it, and shut it down when you are done.

#### Running the container {.unlisted .unnumbered}

To start up Python through Docker, follow these steps:

1. In a new PowerShell window, type the following command to run the container and hit enter: 

```shell
docker run --rm -ti -p 8888:8888 -v ${PWD}:/home/jovyan/work darribas/gds:5.0
```

<img src="figs/chp3/docker_run.png" width="614" style="display: block; margin: auto;" />

<br>

You have now started a Python session. 


<div class="alert alert-info" style="font-size:120%">
<b>IMPORTANT</b>: <br>
    
Please do NOT close the PowerShell window until you are finished in this Python session
   
</div>

2. To access this session go to your chosen web browser (e.g. Firefox/Chrome) and type: `localhost:8888` into the search bar. You should see something similar to:

<br>

<img src="figs/chp3/jupyter_token.png" width="696" style="display: block; margin: auto;" />

3. The page that loads will prompt you for a password or a token. This can be found in the text in the terminal following the last command you ran. This will be a long series of numbers and letters will be preceded by `?token=`. Copy this long series of characters and paste into the password box in your browser.

<img src="figs/chp3/docker_token.png" width="614" style="display: block; margin: auto;" />


4. Now you are in Jupyter Lab, it should look like this, more or less:

<img src="figs/chp3/lab.png" width="696" style="display: block; margin: auto;" />

<br>

#### Using RStudio Server {.unlisted .unnumbered}

- This notebook is where you will run your code. Each shaded box is called a kernel. To test this out you can type `print('test')` into one of these kernels. To run the code use the shortcut `Ctrl + Enter`.

<img src="figs/chp1/Figure12.png" width="693" style="display: block; margin: auto;" />

<br>

<div class="alert alert-info" style="font-size:120%">
<b>IMPORTANT</b>: <br>
    
Make sure you save files you want to keep **ONLY** _within_ the `work` folder, as this will ensure they are saved on your machine.
    
Everything saved outside the `work` folder will be _destroyed_ as soon as you shut down the session.
   
</div>

- You can save your notebook using **File** > **Save notebook as**
<img src="figs/chp1/Figure13.png" width="538" style="display: block; margin: auto;" />

<br>

- You can create new folders to organise your work
<img src="figs/chp1/Figure14.png" width="540" style="display: block; margin: auto;" />

<br>

- And you can access other files on your machine through the 'work' folder in the File Browser. From here you can navigate to your Documents and designated folder for this module

<img src="figs/chp1/Figure15a.png" width="538" style="display: block; margin: auto;" />

<img src="figs/chp1/Figure15b.png" width="538" style="display: block; margin: auto;" />

<img src="figs/chp1/Figure15c.png" width="538" style="display: block; margin: auto;" />
<br>

#### Ending your session {.unlisted .unnumbered}

Once you have finished in your Jupyter session and have saved all your work, you can end the session from the terminal.

Using `Ctrl + C` will prompt a `y/n` option. Either type `y` or `Ctrl + C` again to end the session. 

<img src="figs/chp3/docker_end.png" width="614" style="display: block; margin: auto;" />

<br>

You can now safely shut the terminal window.

<br>

Next time you go to run a Jupyter Notebook you will not need to repeat the whole process as you have already installed Docker and the GDS environment. Instead you can start from [Running Python through Docker](#winpro_run) and carry on from there.

<br>

## Manual Installation {#winpro_manual_install .unnumbered}

### Download and Install R  {.unlisted .unnumbered}

#### Download R  {.unlisted .unnumbered}

R is the coding software that will execute the code you write in RStudio

**NOTE: You need to install R before you install RStudio**


<img src="figs/chp3/Picture_1.png" width="825" style="display: block; margin: auto;" />

-  Open the [R download page](https://cran.rstudio.com/) in your browser and click on **Download R for Windows**.  

<img src="figs/chp3/Picture_2.png" width="962" style="display: block; margin: auto;" />

-  Click on **base** (highlighted in red here) as you are installing R for the first time. 

<img src="figs/chp3/Picture_3.png" width="825" style="display: block; margin: auto;" />

-  Click on **Download R 4.0.3 for Windows** (highlighted in red here) to start the download. 

#### Install R {.unlisted .unnumbered}

<img src="figs/chp3/Picture_4.png" width="784" style="display: block; margin: auto;" />

-	Navigate to your **Downloads** folder and double click on the **_R-4.0.3-win_** file.

**NOTE: Once you double click on the file, a window might pop up that asks you if you want to allow this app to make changes to your device click _YES_ to continue the installation**

<img src="figs/chp3/R_1.png" width="350px" style="display: block; margin: auto;" />

-	A new window will pop up asking you to select a language for the installation. Select **English** and click **_OK_**.

<img src="figs/chp3/R_2.png" width="600px" style="display: block; margin: auto;" />

-	The next window shows the Terms and Conditions. Click **_Next_** to continue with the installation. 

<img src="figs/chp3/R_3.png" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you to specify where you would like to install R. Leave the default settings and click **_Next_**. 

<img src="figs/chp3/R_4.png" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you what components of R you want to install. Leave the default settings (all boxes ticked) and click **_Next_**. 


<img src="figs/chp3/R_5.png" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you if you want to customise the startup options.
- Select **No** and click **_Next_**.  

<img src="figs/chp3/R_6.png" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you to select/name a start menu folder.
- Leave the default settings (R) and click **_Next_**.  

<img src="figs/chp3/R_7.png" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you to select additional task that will be performed while installing R.
- Leave the default (Additional shortcuts unticked,Registry entries ticked) and click **_Next_** .

<img src="figs/chp3/R_8.png" width="600px" style="display: block; margin: auto;" />

-	R will now install.

<img src="figs/chp3/R_9.png" width="600px" style="display: block; margin: auto;" />

-	Once the installation is complete, click **_Finish_**. 




### Download and Install RStudio  {.unlisted .unnumbered}

#### Download RStudio  {.unlisted .unnumbered}

R-Studio is the R user interface in which you can code. 

<img src="figs/chp3/Studio_1.png" width="962" style="display: block; margin: auto;" />

- Go to the [R-studio download page](https://rstudio.com/products/rstudio/download/).

<img src="figs/chp3/Studio_2.png" width="973" style="display: block; margin: auto;" />

- On the download page, scroll down and click on the **_Download_** button under **RStudio Desktop**. 


<img src="figs/chp3/Studio_3.png" width="960" style="display: block; margin: auto;" />

- Click on **Download RStudio for Windows** to download the installation file 

#### Install RStudio  {.unlisted .unnumbered}

<img src="figs/chp3/Studio_4.png" width="825" style="display: block; margin: auto;" />

-	Navigate to your **Downloads** folder and double click on the **RStudio-1.4.1103** file.  
**NOTE: Once you double click on the file, a window might pop up that asks you if you want to allow this app to make changes to your device click _YES_ to continue the installation**

<img src="figs/chp3/Studio_5.png" width="600px" style="display: block; margin: auto;" />

-	In the installation window that opens, click **_Next_**.

<img src="figs/chp3/Studio_6.png" width="600px" style="display: block; margin: auto;" />

- In the next window, you can specify where you want to install RStudio.
- Leave the default settings and click **_Next_**. 


<img src="figs/chp3/Studio_7.png" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you to choose a Start Menu Folder.
- Leave the default settings (RStudio) and click **_Next_**.


<img src="figs/chp3/Studio_8.png" width="600px" style="display: block; margin: auto;" />

-	RStudio is now installing. 


<img src="figs/chp3/Studio_9.png" width="600px" style="display: block; margin: auto;" />

-	Once the intallation is completed, click on **_Finish_**.

### Open RStudio  {.unlisted .unnumbered}
<img src="figs/chp3/Studio_10.png" width="962" style="display: block; margin: auto;" />

- To open RStudio, click on the Windows logo in the left bottom corner of your screen and either type **_RStudio_** or look for the **RStudio folder** in the menu. 
- Double click on Rstudio to open it. 

<center>
**CONGRATULATIONS YOU HAVE NOW SUCCESFULLY INSTALLED R and Rstudio**

**You can now start coding**


![](https://media.giphy.com/media/PiQejEf31116URju4V/giphy.gif)
