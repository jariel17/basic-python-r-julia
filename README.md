

# Basic programming concepts in Python, R and Julia

The intention of this project is to be a playground for Jupyter Notebooks with kernels different than Python, so why not Julia and R languages?
I have never use a Jupyter Notebook for a program different than Python.

## Adding julia to Jupyter Notebooks

1. Download Julia from the oficial repository
    For linux wget https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.1-linux-x86_64.tar.gz
2. Extract it and install it in your OS
    tar zxvf julia-1.8.1-linux-x86_64.tar.gz
3. Add Julia to your PATH
    For linux code ~/.bashrc
    export PATH="$PATH:/home/your_username/julia-1.8.1/bin"
4. Restart /.bashrc to have the new path available
    To do so run source ~/.bashrc
5. Create a new Jupyter Notebook your_file.ipynb 
6. Change the kernel to julia
7. Have fun with your Julia notebook


## Adding R to Jupyter Notebooks

 1. Install R in your system
    For linux it would be 
    sudo apt-get install r-base
    and then
    sudo apt-get install r-base-dev

2. Verify the installation
    In the terminal type R to open R console

3. In order to install R devtools make sure you have the following Linux libraries
    sudo apt-get install libzmq3-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev build-essential libcurl4-openssl-dev libxml2-dev libssl-dev libfontconfig1-dev

3. In the R session, install the IRKernel with these commands:
    install.packages('devtools')
    devtools::install_github('IRkernel/IRkernel')
    IRkernel::installspec()
4. Create a new Jupyter Notebook your_file.ipynb 
5. Change the kernel to R
6. Have fun with your R notebook

## Assignments

- [x] Session 1, BMC calculator (Conditionals)
  - [x] Python
  - [x] R
  - [x] Julia
- [x] Session 2, Person register (Functions)
  - [x] Python
  - [x] R
  - [x] Julia
- [x] Session 3, Areas and perimeters (Modules and Packages)
  - [x] Python
  - [x] R
  - [x] Julia
- [X] Session 4, Scores register (Files)
  - [X] Python
  - [x] R
  - [X] Julia
- [x] Session 5, Data filtering (Data processing)
  - [x] Products Data JSON
    - [x] Python
    - [x] R
    - [X] Julia
  - [x] Sales Data CSV
    - [x] Python
    - [x] R
    - [X] Julia
- [x] Session 6, Student scores analysis (Notebooks)
  - [x] Python
  - [x] R
  - [X] Julia 

## Final Thoughts

Python is a very versatile language that can handle an incredible range of situations, I was already familiar with it. it has ton of libraries and resources. Very well suited for any user with programming experience. I used Pandas to handle dataframes which is a incredible popular and well documented library.
I found Julia very similar to Python which make me feel like something I already knew, which is good. It has less libraries and documentation is more limited than Python's but that is expected since it is way newer than Python. Its use of the End keyword remind me of Visual Basic. In the end, it was a good experience using it. For dataframes manipulation I used DataFrames and CSV to handle .csv files, also I used Statistics for some calculations. These tools worked straighforward and look similar to their Python equivalents.
R was the strange kid in town, its syntax is way different than the other two, it took some time to get used to it. It is very clear that is intended for data science and not for general purpose. For dataframes I used dplyr and readr to handle .csv files. The syntax was way different in here too, but handling dataframes with dplyr somehow felt cleaner than doing it in Python or even Julia, that was surprisingly satisfying.

In conclusion, every language has its advantages and disadvantages, the selection of one should be based on the requirements project itself and also the experience and preference of the person who is gonna use it. I already knew Python, I loved the familiarity of Julia and the tidiness of R. All three great options for any data science project.