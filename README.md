

# Curso de Programación Previo a la Maestría en Analítica de Datos
The intention of this project is to be a playground for Jupyter Notebooks with kernels different than Python, so why not Julia and R languages?
I have never use a Jupyter Notebook for a program different than Python.

# Adding julia to Jupyter Notebooks

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

- [ ] Session 1, BMC calculator (Conditionals)
  - [x] Python
  - [ ] R
  - [x] Julia
- [ ] Session 2, Person register (Functions)
  - [x] Python
  - [ ] R
  - [x] Julia
- [ ] Session 3, Areas and perimeters (Modules and Packages)
  - [x] Python
  - [ ] R
  - [ ] Julia
- [ ] Session 4, Scores register (Files)
  - [ ] Python
  - [ ] R
  - [ ] Julia
- [ ] Session 5, Data filtering (Data processing)
  - [ ] Products Data JSON
    - [ ] Python
    - [ ] R
    - [ ] Julia
  - [ ] Sales Data CSV
    - [x] Python
    - [ ] R
    - [ ] Julia
- [ ] Session 6, Student scores analysis (Notebooks)
  - [x] Python
  - [ ] R
  - [ ] Julia 