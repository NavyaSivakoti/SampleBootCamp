public class HelloWorld {
	public static void main(String args[]){
		int i=0;
		while(true){
			i++;
			System.out.println("Hello World"+i);
			try {
				Thread.sleep(2000);
			} catch (Exception e){
				System.out.println(e);
			}
		}
	}
}
