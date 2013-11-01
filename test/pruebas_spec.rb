require "lib/fraccion.rb"

describe Fraccion do 
	before :each do
		@n1 = Fraccion.new(1,1)
	end
	
	describe "Almacenamiento del denominador y numerador" do #Código de prueba para el almacenamiento del numerador y denominador
		it "Se almacena el numerador" do
			@n1.num.should eq(1)
		end
		it "Se almacena el denominador" do
			@n1.den.should eq(1)
		end
	end


	describe "devolver el numerador y denominador" do #Código de prueba para mostrar el numerador y el denominador
		it "Devuelve correctamente el numerador" do
			@n1.num.should eq(1)
		end
		it "Devuelve correctamente el denominador" do
			@n1.num.should eq(1)
		end
	end
	
	describe "Fraccion simplificada a su minima expresion" do #Código de prueba para simplificar una fraccion
		it "el numerador y el denominador se dividen entre su mcd" do
			n2 = Fraccion.new(8,8)
			n2.num.should eq(1)
			n2.den.should eq(1)
		end
	end

	describe "Formato de salida en fraccion" do #Código de prueba para comprobar el formato de salida de una fraccion
		it "El formato de salida es el correcto" do
			n3 = Fraccion.new(4,4)
			n3.to_s.should eq("1/1")
		end
	end

	describe "Formato de salida en punto flotante" do #Código de prueba para mostrar fracciones en punto flotante
		it "El formato de salida es el correcto" do
			n4 = Fraccion.new(5,2)
			n4.flotante.should eq(2.5)
		end
	end		
	
	describe "Comparador de dos fracciones" do #Código de prueba para comprobar la comparacion de fracciones
		it "Las dos fracciones son iguales" do
			n5 = Fraccion.new(2,5)
			n6 = Fraccion.new(2,5)
			(n5 == n6).should eq(true)
		end
	end

	describe "Comprobar valor absoluto" do #Código de prueba para comprobar el valor absoluto
		it "El valor absoluto de la funcion es correcto" do
			n7 = Fraccion.new(-2,-3)
			n7.absoluto
			n7.num.should eq(2)
			n7.den.should eq(3)
			
		end
	end

	describe "Hacer el reciproco de una funcion" do #Código de prueba para comprobar el recíproco
		it "El reciproco de la funcion es correcto" do
			n8 = Fraccion.new(2,3)
			n8.reciproco	
			n8.num.should eq(3)
			n8.den.should eq(2)
		end
	end
	
	describe " Calcular el opuesto de una fraccion" do #Código de prueba para comprobar el opuesto
		it "Se hace el opuesto de la fraccion" do
			n9 = Fraccion.new(6,8)
			n9.opuesto
			n9.num.should eq(-3)
			n9.den.should eq(4)
		end
	end
	
	describe "Calcular la suma de fracciones" do #Código de prueba para la suma de fracciones
		it "Suma correcta" do
			n10 = Fraccion.new(1,5)
			n11 = Fraccion.new(1,5)
			n12=(n10 + n11)
			n12.num.should eq(2)
			n12.den.should eq(5)
		end
	end
	
	describe "Calcular la resta de fracciones" do #Código de prueba para comprobar la resta de fracciones
		it "Resta correcta" do
			n13 = Fraccion.new(2,5)
			n14 = Fraccion.new(1,5)
			n15= (n13 - n14)
			n15.num.should eq(1)
			n15.den.should eq(5)
			
		end
	end

	describe "Multiplicar dos fracciones" do #Código de prueba para comprobar la multiplicacion de fracciones
		it "Multiplicacion correcta" do
			n16 = Fraccion.new(2,5)
			n17 = Fraccion.new(1,5)
			n18= (n16 * n17)
			n18.num.should eq(2)
			n18.den.should eq(25)
			
		end
	end
	
	describe "Dividir dos fracciones" do #Código de prueba para comprobar la division de fracciones
		it "Operacion correcta" do
			n19 = Fraccion.new(2,5)
			n20 = Fraccion.new(1,5)
			n21= (n19 / n20)
			n21.num.should eq(2)
			n21.den.should eq(1)
			
		end
	end



	describe "Resto de dos fracciones" do #Código de prueba para comprobar el resto de de la division de dos fracciones
		it "Operacion correcta" do
			n22 = Fraccion.new(2,5)
			n23 = Fraccion.new(1,5)
			n24= (n22 % n23)
			n24.num.should eq(-1)
			n24.den.should eq(1)
			
		end
	end



	describe "Comprobar si una fraccion es menor que otra" do #Código de prueba para comprobar si una fraccion es menor
		it "La primera fraccion es menor que la segunda fraccion" do
			n25 = Fraccion.new(1,5)
			n26 = Fraccion.new(17,2)
			(n25 < n26).should eq(true)
		end
	end
	
	describe "Comprobar si una fraccion es mayor que otra" do #Código de prueba para comprobar si una fraccion es mayor
		it "La primera fraccion es mayor que la segunda fraccion" do
			n27 = Fraccion.new(17,2)
			n28 = Fraccion.new(1,5)
			(n27 > n28).should eq(true)
		end
	end	

	describe "Comprobar si una fraccion es menorigual que otra" do #Código de prueba para comprobar si una fraccion es menor o igual
		it "La primera fraccion es menor que la segunda fraccion" do
			n29 = Fraccion.new(1,5)
			n30 = Fraccion.new(17,2)
			(n29 <= n30).should eq(true)
		end
		it "La primera fraccion es igual que la segunda fraccion" do
			n31 = Fraccion.new(1,5)
			n32 = Fraccion.new(1,5)
			(n31 <= n32).should eq(true)
		end
	end
	
	describe "Comprobar si una fraccion es mayorigual que otra" do #Código de prueba para comprobar si una fraccion es mayor o igual
		it "La primera fraccion es mayor que la segunda fraccion" do
			n33 = Fraccion.new(17,2)
			n34 = Fraccion.new(1,5)
			(n33 >= n34).should eq(true)
		end
		it "La primera fraccion es igual que la segunda fraccion" do
			n35 = Fraccion.new(17,2)
			n36 = Fraccion.new(17,2)
			(n35 >= n36).should eq(true)
		end
	end	

	describe "Pruebas conbinadas" do #Pruebas combinadas
		it "La primera fraccion es mayor que la segunda fraccion" do
			n37 = Fraccion.new(1,1)
			n38 = Fraccion.new(1,1)
			a=(n37 % n38)
			if(a==Fraccion.new(0,1))
			n37.opuesto
			d=(n37 * n38)
			d.absoluto
			d.num.should eq(1)
			d.den.should eq(1)
			else
			n37.num.should eq(0)
			n37.den.should eq(1)
			n38.num.should eq(0)
			n38.den.should eq(1)
			end
		end

	end	


end
