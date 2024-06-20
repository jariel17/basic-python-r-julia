module Rectangulo

export area, perimetro

function area(lado, ancho)
    return lado*ancho
end

function perimetro(lado, ancho)
    return 2*(lado+ancho)
end

end