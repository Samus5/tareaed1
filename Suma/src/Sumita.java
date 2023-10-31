import java.util.Scanner;
public class Sumita {

	public static void main(String[] args) {
		Scanner sc = new Scanner (System.in);
		System.out.println("Introduzca un numero");
		int num1 = Integer.parseInt(sc.nextLine());
		System.out.println("Introduzca el otro numero");
		int num2 = Integer.parseInt(sc.nextLine());
		System.out.println("La suma es " +(num1 + num2)+ " Platanos, manzanas??");
		sc.close();
	
	}

}
