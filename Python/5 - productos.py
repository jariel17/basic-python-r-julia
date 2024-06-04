import os
import json

# './../data/users.json'

products_file = './../data/products.json'

with open(products_file, 'r') as json_file:
    data = json.load(json_file)

def listar_productos():
    if len(data) != 0:
        for product in data:
            print("-------------")
            for clave, valor in product.items():
                print(f"{clave}: {valor}")
    else:
        print("No hay registros")


def filtrar_categoria(categoria):
    for product in data:
        if product['category'] == categoria:
            for clave, valor in product.items():
                print(f"{clave}: {valor}")
            print("-------------")



filtrar_categoria(categoria='Electronics')