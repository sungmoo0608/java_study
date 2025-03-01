package day_2024_07_29;

class Point {
	private int x, y;
	
	public Point(int x, int y) { 
		this.x = x; this.y = y; 
	}
	public int getX() { 
		return x; 
	}
	public int getY() { 
		return y; 
	}
	protected void move(int x, int y) { 
		this.x = x; this.y = y; }
}

class ColorPoint extends Point{
	private String color;
	
	public ColorPoint(int x,int y, String color) {
		super(x,y);
		this.color = color;
	}
	
	public void setXY(int x,int y) {
		super.move(x, y);
	}
	
	public void setColor(String color) {
		this.color = color ;
	}
	
	public String toString() {
		return this.color+"색 ("+ super.getX() +","+ super.getY() +")의 점" ;
	}
	
	
}

public class ColorMain{

	public static void main(String args[]) {
		ColorPoint cp = new ColorPoint(5, 5, "YELLOW");
		cp.setXY(10, 20);
		cp.setColor("RED");
		String str = cp.toString();
		System.out.println(str + "입니다.");
	}

}