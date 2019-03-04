public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
    //your code here 
    String digits = e.substring(2,12);   
    double dNum = Double.parseDouble(digits);   
    System.out.println(dNum);  //displays 7.182818284E9`
    for(int g=2;g<e.length()-10;g++)
    {
    	digits=e.substring(g,g+10);
    	dNum = Double.parseDouble(digits);
    	if(isPrime(dNum)==true)
    	{
    		println(dNum+" true");
    		break;
    	}
    }
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    //your code here   
	if(dNum<2)
	{
		return false;
	}
	if(dNum>1)
	{
		for(int c=2;c<=Math.sqrt(dNum);c++)
		{
		  if(dNum%c==0)
		  {
		    return false;
		  }
		}
	}
	return true;
} 
