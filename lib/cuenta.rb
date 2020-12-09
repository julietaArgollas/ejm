class Cuenta
    def calcular_precio_final(cantidad_items, precio_unitario, estado)
        if (estado == 'UT')
            return cantidad_items*precio_unitario - 30 + 60
        end
        if(cantidad_items == 1000)
            return cantidad_items*precio_unitario - cantidad_items*precio_unitario*0.03
        end
        if(cantidad_items == 3000)
            return cantidad_items*precio_unitario - 150
        end
        return cantidad_items*precio_unitario
    end
end