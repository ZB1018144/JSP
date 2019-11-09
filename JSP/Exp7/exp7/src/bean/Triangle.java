package bean;

public class Triangle {
	
	
//	判断三条边能否组成三角形
	public boolean isTriangle(double s1,double s2,double s3) {
		if((s1+s2)>s3&&(s1+s3)>s2
				&&(s2+s3)>s1){
					return true;
				}
			return false;
	}
	
	public double doArea(double s1,double s2,double s3) {
		double s = 0.0;
		double p = (s1+s2+s3)/2;
		s = Math.sqrt(p*(p-s1)*(p-s2)*(p-s3));
		return s;
	}

	
	
	
}
