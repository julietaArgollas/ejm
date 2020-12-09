require 'cuenta.rb'

RSpec.describe Cuenta do
    before{@cuenta=Cuenta.new()}

    it "deberia devolver la cuenta total" do
        expect(@cuenta.calcular_precio_final(5,2,'NY')).to eq(10)
    end
    it "deberia devolver la cuenta total" do
        expect(@cuenta.calcular_precio_final(2,8,'NY')).to eq(16)
    end
    #decuentos
    it "si la cantidad de items es 1000 recibe descuento del 3%" do
        expect(@cuenta.calcular_precio_final(1000,1,'NY')).to eq(970)
    end
    it "si la cantidad de items es 3000 recibe descuento del 5%" do
        expect(@cuenta.calcular_precio_final(3000,1,'NY')).to eq(2850)
    end
    #impuesto por estado 
    it "si el estado es UT el impuesto sera del 6%" do
        expect(@cuenta.calcular_precio_final(1000,1,'UT')).to eq(1030)
    end

end