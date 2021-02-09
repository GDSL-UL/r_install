# Windows 10 Home/pre-10 {#otherWin .unnumbered}

This guide covers the installation of R and RStudio on machines running Windows 10 Home Edition or versions of Windows prior to Windows 10 (e.g. Windows 7). With this approach, you will install R and RStudio "natively", that is running directly on your operating system. If you are not sure what version of Windows you are running, check out this [guide](#windows-version).

<div class="alert alert-danger" style="font-size:120%">
<b>IMPORTANT</b>: <br>
    
This module has been written using the most up-to-date versions of R, RStudio and relevant packages. To avoid software compatibility issues it is important you have these same versions installed on your home computer.

**Therefore, if you have R or RStudio already installed on your computer, please first uninstall them unsing the instructions [here](#uninstall_otherwin).**
    
</div>


## Download and Install R  {.unlisted .unnumbered}

### Download R  {.unlisted .unnumbered}

R is the coding software that will execute the code you write in RStudio.

**NOTE: You need to install R before you install RStudio**


<img src="figs/chp4/Picture_1.PNG" width="825" style="display: block; margin: auto;" />

-  Open the [R download page](https://cran.rstudio.com/) in your browser and click on **Download R for Windows**.  

<img src="figs/chp4/Picture_2.PNG" width="962" style="display: block; margin: auto;" />

-  Click on **base** (highlighted in red here) as you are installing R for the first time. 

<img src="figs/chp4/Picture_3.PNG" width="825" style="display: block; margin: auto;" />

-  Click on **Download R 4.0.3 for Windows** (highlighted in red here) to start the download. 

### Install R {.unlisted .unnumbered}

<img src="figs/chp4/Picture_4.PNG" width="784" style="display: block; margin: auto;" />

-	Navigate to your **Downloads** folder and double click on the **_R-4.0.3-win_** file.

**NOTE: Once you double click on the file, a window might pop up that asks you if you want to allow this app to make changes to your device click _YES_ to continue the installation**

<img src="figs/chp4/R_1.PNG" width="350px" style="display: block; margin: auto;" />

-	A new window will pop up asking you to select a language for the installation. Select **English** and click **_OK_**.

<img src="figs/chp4/R_2.PNG" width="600px" style="display: block; margin: auto;" />

-	The next window shows the Terms and Conditions. Click **_Next_** to continue with the installation. 

<img src="figs/chp4/R_3.PNG" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you to specify where you would like to install R. Leave the default settings and click **_Next_**. 

<img src="figs/chp4/R_4.PNG" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you what components of R you want to install. Leave the default settings (all boxes ticked) and click **_Next_**. 


<img src="figs/chp4/R_5.PNG" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you if you want to customise the startup options.
- Select **No** and click **_Next_**.  

<img src="figs/chp4/R_6.PNG" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you to select/name a start menu folder.
- Leave the default settings (R) and click **_Next_**.  

<img src="figs/chp4/R_7.PNG" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you to select additional task that will be performed while installing R.
- Leave the default (Additional shortcuts unticked,Registry entries ticked) and click **_Next_** .

<img src="figs/chp4/R_8.PNG" width="600px" style="display: block; margin: auto;" />

-	R will now install.

<img src="figs/chp4/R_9.PNG" width="600px" style="display: block; margin: auto;" />

-	Once the installation is complete, click **_Finish_**. 




## Download and Install RStudio  {.unlisted .unnumbered}

### Download RStudio  {.unlisted .unnumbered}

R-Studio is the R user interface in which you can code. 

<img src="figs/chp4/Studio_1.PNG" width="962" style="display: block; margin: auto;" />

- Go to the [R-studio download page](https://rstudio.com/products/rstudio/download/).

<img src="figs/chp4/Studio_2.PNG" width="973" style="display: block; margin: auto;" />

- On the download page, scroll down and click on the **_Download_** button under **RStudio Desktop**. 


<img src="figs/chp4/Studio_3.PNG" width="960" style="display: block; margin: auto;" />

- Click on **Download RStudio for Windows** to download the installation file 

### Install RStudio  {.unlisted .unnumbered}

<img src="figs/chp4/Studio_4.PNG" width="825" style="display: block; margin: auto;" />

-	Navigate to your **Downloads** folder and double click on the **RStudio-1.4.1103** file.  
**NOTE: Once you double click on the file, a window might pop up that asks you if you want to allow this app to make changes to your device click _YES_ to continue the installation**

<img src="figs/chp4/Studio_5.PNG" width="600px" style="display: block; margin: auto;" />

-	In the installation window that opens, click **_Next_**.

<img src="figs/chp4/Studio_6.PNG" width="600px" style="display: block; margin: auto;" />

- In the next window, you can specify where you want to install RStudio.
- Leave the default settings and click **_Next_**. 


<img src="figs/chp4/Studio_7.PNG" width="600px" style="display: block; margin: auto;" />

-	The next window will ask you to choose a Start Menu Folder.
- Leave the default settings (RStudio) and click **_Next_**.


<img src="figs/chp4/Studio_8.PNG" width="600px" style="display: block; margin: auto;" />

-	RStudio is now installing. 


<img src="figs/chp4/Studio_9.PNG" width="600px" style="display: block; margin: auto;" />

-	Once the intallation is completed, click on **_Finish_**.

## Open RStudio  {.unlisted .unnumbered}
<img src="figs/chp4/Studio_10.PNG" width="962" style="display: block; margin: auto;" />

- To open RStudio, click on the Windows logo in the left bottom corner of your screen and either type **_RStudio_** or look for the **RStudio folder** in the menu. 
- Double click on Rstudio to open it. 

<center>

## Install Packages  {.unlisted .unnumbered}

In order to complete the course, you will need to have installed all the required packages. The simplest way to do this is to run the below code in RStudio.


```r
list.of.packages.cran <- c(
  "arm", "car", "corrplot", "FRK", "gghighlight",
  "ggplot2", "ggmap", "GISTools", "gridExtra", "gstat",
  "jtools", "kableExtra", "knitr", "lme4", "lmtest",
  "lubridate", "MASS", "merTools", "plyr", "RColorBrewer",
  "rgdal", "sf", "sjPlot", "sp", "spgwr",
  "spatialreg", "spacetime", "stargazer", "tidyverse", "tmap",
  "viridis", "tufte"
)

new.packages.cran <- list.of.packages.cran[!(list.of.packages.cran %in% installed.packages()[,"Package"])]
if(length(new.packages.cran)) install.packages(new.packages.cran)

for(i in 1:length(list.of.packages.cran)) {
  library(list.of.packages.cran[i], character.only = T)
}
```

- Copy the code above by clicking the button to the top right of the code chunk which says **Copy to clipboard** when you hover over it.

<img src="figs/chp4/Packages_1.png" width="683" style="display: block; margin: auto;" />

- Open _RStudio_ and click the image of a _'white and green plus sign on top of a white square'_ that says **New File** when you hover over it. Then, from the drop-down menu that appears, click on the option **R Script**.

<img src="figs/chp4/Packages_2.png" width="683" style="display: block; margin: auto;" />

- A new window with a blank background and the heading **_Untitled1_** (indicated by red arrow above) should appear. 

- Paste the copied code into this window by right-clicking and selecting **Paste**.

<img src="figs/chp4/Packages_3.png" width="683" style="display: block; margin: auto;" />

- Click on the **Code** menu at the top of the screen. Select **Run Region** from the drop-down menu, then click **Run All** from the second drop-down menu.

- This should install all the packages you need to complete the ‘Spatial Modelling for Data Scientists’ module.

<div class="alert alert-success" style="font-size:120%">
<b>NOTE</b>: <br>
    
The script will install several dozen packages on your computer. This could take around 20-30 minutes to complete, depending on you computer and bandwidth.
   
</div>

<img src="figs/chp4/Packages_4.png" width="683" style="display: block; margin: auto;" />

- Once the code has finished running, a blue arrow with a gray vertical line next to it (indicated by red arrow above) will appear at the bottom of the _Console_ window at the bottom left of the screen. This means R has finished the task it was given and is ready for it's next command.

<img src="figs/chp4/Packages_5.png" width="683" style="display: block; margin: auto;" />

- You can now close the _R Script_ file you created by clicking on the `x` next to the header **_Untitled1_** (indicated by red arrow above). You do not need to save the file.

<br>

<div class="alert alert-success" style="font-size:120%">

Congratulations!!! You have now successfully installed R, RStudio and all packages required to complete the course!

You can now start coding.

</div>

![](https://media.giphy.com/media/PiQejEf31116URju4V/giphy.gif)

<br>

## Uninstall R and RStudio {#uninstall_otherwin .unnumbered}

This section shows how to uninstall programs on Windows 10 Home Edition. You only need to read this section if you have an older version of R or RStudio already installed on your computer.

<img src="figs/chp4/Uninstall_1.png" width="683" style="display: block; margin: auto;" />

- Right click on the Windows logo in the left bottom corner of your screen and click on **Settings**.

<img src="figs/chp4/Uninstall_2.png" width="683" style="display: block; margin: auto;" />

- At the _Settings_ menu, click on **Apps**.

<img src="figs/chp4/Uninstall_3.png" width="683" style="display: block; margin: auto;" />

- This should take you to a page called _Apps & features_, where you can select programs to uninstall. Scroll down until you see any program relating to R or RStudio (in this case 'R 3.6.1', RStudio and 'Rtools version 3.5').

- Click on the program you wish to uninstall and select **Uninstall**.

**NOTE: Once you click Uninstall, a window might pop up that asks you if you want to allow this app to make changes to your device click _YES_ to continue.**

<img src="figs/chp4/Uninstall_4.png" width="400px" style="display: block; margin: auto;" />

- You will then be asked whether you are sure you want to remove the program. Click **Yes**.

<img src="figs/chp4/Uninstall_5.png" width="600px" style="display: block; margin: auto;" />

-	The program is now uninstalling.

<img src="figs/chp4/Uninstall_6.png" width="400px" style="display: block; margin: auto;" />

- Once this is complete, you will get a message confirming that the installation was successful. Click **OK**.

<br>

**CONGRATULATIONS YOU HAVE NOW SUCCESFULLY UNINSTALLED THE PROGRAM!**

**Make sure to repeat this process until all programs relating to R (i.e. R, RStudio and Rtools) have been uninstalled from your machine.**
