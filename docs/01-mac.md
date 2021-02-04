# MacOS Installation {#macos .unnumbered}

<div class="alert alert-info" style="font-size:120%">
<b>NOTE</b>: <br>

This guide shows you how to install on MacOS via the `gds_env` [@gds_env]

</div>

## Installation {.unnumbered}

### Requirements {.unlisted .unnumbered}

To be able to complete this guide, your machine will need to meet the following requirements:

1. A stable internet connection
2. ~10GB of space on your hard drive
3. MacOS version 10.13 or newer i.e. High Sierra, Mojave, Catalina or Big Sur. If you are unsure what version you are running click on the Apple icon in the top left of the screen and then **About this Mac**.
4. Mac hardware must be a 2010 model or newer

### Docker install steps {.unlisted .unnumbered}

1. Go to the [dockerhub website](https://hub.docker.com/editions/community/docker-ce-desktop-mac/).
2. Ensure you meet the criteria for download (it is the same as stated above) and then select 'Get Docker' button.

<img src="figs/chp1/Figure1.png" width="1321" style="display: block; margin: auto;" />
<br>

3. This will then download to your machine but may take some time. Once finished, to access this download go to **Finder** > **Downloads** > **Docker.dmg** and double click.

<img src="figs/chp1/Figure2.png" width="502" style="display: block; margin: auto;" />

<br>

4. You should then be prompted to drag and drop this application into the applications folder like so:

<img src="figs/chp1/Figure3.png" width="360" style="display: block; margin: auto;" />
You may get further windows asking for access to the program. To these you can click **Open** > **OK** > enter your account password and click **Install helper**

<br>


5. After you have done this, the whale icon should now show in your taskbar:
<img src="figs/chp1/Figure4.png" width="407" style="display: block; margin: auto;" />

<br>

You have successfully downloaded Docker!

### Using Docker {.unlisted .unnumbered}

Now we have Docker installed we can use it to access Python and all the associated packages we need for the practicals

### Installing the GDS environment {.unlisted .unnumbered}

1. Access your terminal: **Launchpad** > **Other** > **Terminal**
2. In a fresh line in the terminal type the following to install the GDS environment container: 

```shell
docker pull darribas/gdsr:1.0alpha
```

<img src="figs/chp1/Figure5.png" width="716" style="display: block; margin: auto;" />

<br>

3. This should now prompt a long download process that looks a bit like this:
<img src="figs/chp1/Figure6.png" width="286" style="display: block; margin: auto;" />
Don't be alarmed if it seems to take a very long time.

<div class="alert alert-info" style="font-size:120%">
<b>IMPORTANT</b>: <br>
    
Make sure you are connected to the internet and it is a stable connection. This step involves the download of large amounts of data (ca. 5.5GB) so it might take a while. However, it only needs to be run once.
   
</div>

### Check success {.unlisted .unnumbered}

You will know the process has completed successfully when each line says *'Pull complete'* and the new line shows your machine name.

If everything has gone according to plan, you should see `darribas/gdsr:1.0alpha` show up on your terminal when you type `docker image ls` (**NOTE** in the image below there are other containers that are not required, do not worry if you don't have those or slightly different values on the ID and the "CREATED" columns, the important bit is having `darribas/gdsr:1.0alpha` listed):

<img src="figs/chp1/Figure8.png" width="716" style="display: block; margin: auto;" />
<br>

## Running RStudio {.unnumbered}

The following sections cover how to spin up a session you have just installed, use it, and shut it down when you are done.

### Running the container {.unlisted .unnumbered}

1. In the new terminal line, type the following command to run the container: 

`docker run -d -e PASSWORD=test123 -p 8787:8787 -v "${PWD}":/home/rstudio/work darribas/gdsr:1.0alpha`

<img src="figs/chp1/Figure7.png" width="1017" style="display: block; margin: auto;" />

<br>

You have now started a RStudio session. 

<div class="alert alert-info" style="font-size:120%">
<b>IMPORTANT</b>: <br>
    
Please do NOT close the terminal window until you are finished in this RStudio session
   
</div>

2. The following window will appear (If this doesn't happen, go to 5):

<img src="figs/chp1/Figure10a.png" width="425" style="display: block; margin: auto;" />

3. Go to *`System Preferences'* > *`Security & Privacy'*. The following window will appear:

<img src="figs/chp1/Figure10b.png" width="668" style="display: block; margin: auto;" />

4. Enter your password.

5. Now you can access the RStudio session. Go to your chosen web browser (e.g. Safari/Chrome) and type: `localhost:8787` into the search bar

<img src="figs/chp1/Figure10.png" width="1314" style="display: block; margin: auto;" />


6. The page that loads will prompt you for a username and password as shown above. Type the following (as on the figure above):

`username: rstudio` 

`password: test123`

<br>

7. Now you are in RStudio Server, you can start coding or opening a new file. Please refer to [Rowe and Arribas-Bel (2021)](https://gdsl-ul.github.io/san/data-wrangling.html#introducing-r) for an introduction to the RStudio interface, R Script and R Notebook.

<img src="figs/chp1/Figure11.png" width="1310" style="display: block; margin: auto;" />

<br>

### Using a R Notebook {.unlisted .unnumbered}

- A R notebook is where you will run your code and can add text. The top header is called `YAML metadata` and each shaded box is called a kernel (or code chunk) contained within delimiters ` ```{r}` and ` ``` `.

- Type `1 + 1` into a code chunk. To run the code click the play icon as indicated below. 

<img src="figs/chp1/Figure12.png" width="1314" style="display: block; margin: auto;" />

<br>

<div class="alert alert-info" style="font-size:120%">
<b>IMPORTANT</b>: <br>
    
Make sure you save your files by  you want to keep **ONLY** _within_ the `work` folder, as this will ensure they are saved on your machine.
    
Everything saved outside the `work` folder will be _destroyed_ as soon as you shut down the session.
   
</div>


- You can access other files on your machine through the `work` folder in the Files Browser. From here you can navigate to your Documents and designated folder for this module. 

<img src="figs/chp1/Figure11a.png" width="1310" style="display: block; margin: auto;" />

<img src="figs/chp1/Figure11b.png" width="1310" style="display: block; margin: auto;" />

<img src="figs/chp1/Figure11c.png" width="1310" style="display: block; margin: auto;" />


Here I am navigating to the san folder that we have created for this module in my Downloads. You can replace this with the pathway to the folder you create for this module.

<br>

- You can save your notebook here using **File** > **Save As**
<img src="figs/chp1/Figure13_new.png" width="530" style="display: block; margin: auto;" />

<br>

- And you can create new folders to organise your work
<img src="figs/chp1/Figure14_new.png" width="910" style="display: block; margin: auto;" />

<br>

### Ending your session {.unlisted .unnumbered}
Once you have finished in your RStudio session and have saved all your work, you can end the session by closing your browser.

1) Run `docker ps`:

<img src="figs/chp1/Figure16.png" width="887" style="display: block; margin: auto;" />

2) Then, type `docker container stop` and copy the *CONTAINER ID* from the output above as shown here:

<img src="figs/chp1/Figure16a.png" width="887" style="display: block; margin: auto;" />

<br>

You can now safely shut the terminal window.

<br>

Next time you go to run a R Notebook you will NOT need to repeat the whole process as you have already installed Docker and the RGDS environment. Instead you can start from [Running the container] and carry on from there.
