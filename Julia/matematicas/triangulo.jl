module triangulo

export area, perimetro

function area(base, altura)
    return (base * altura) / 2
end

function perimetro(lado1, lado2, lado3)
    return lado1 + lado2 + lado3
end

end