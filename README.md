

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