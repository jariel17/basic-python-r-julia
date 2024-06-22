import Pkg

# Check if JSON is installed, install if not
if !haskey(Pkg.installed(), "JSON")
    println("JSON package not found. Installing...")
    Pkg.add("JSON")
else
    println("JSON package is already installed.")
end

using JSON

# './../data/users.json'

products_file = "./../data/products.json"

data = JSON.parsefile(products_file)

function listar_productos()
    if !isempty(data)
        for product in data
            println("-------------")
            for (key, value) in product
                println("$key: $value")
            end
        end
    else
        println("No hay registros")
    end
end

function filtrar_categoria(categoria)
    for product in data
        if product["category"] == categoria
            for (key, value) in product
                println("$key: $value")
            end
            println("-------------")
        end
    end
end

println("Listamos todos los productos:")
listar_productos()
println("\n----------------------------\n")
println("Filtramos los productos por la categoria Electronics:")
filtrar_categoria("Electronics")