//insert sort
int [] i=new int [20];
int [] ans=new int [20];
int b,c,lengthi,lengthans;

void setup ()
{
  size (400,500);
  frameRate (24);
  for (int a=0;a<20;a++)
  {
    i[a]=int(random(1,101));
  }
  lengthi=20;  
}  

void draw ()
{
  if (lengthans<20)
  {
    background (255);
    if (c==lengthi-1)
    {
      ans[lengthans]=i[b];
      for (int a=b;a<lengthi-1;a++)
      {
        i[a]=i[a+1];
      }  
      lengthi=lengthi-1;
      lengthans=lengthans+1;
      c=0;
      b=0;
    }  
    else 
    {
      c=c+1;
    }  
    print (c);
    if (i[c]<i[b])
    {
      b=c;
    }  
    for (int a=0;a<lengthans;a++)
    {
      fill (127,127,255);
      rect (a*20,500-2*ans[a],20,2*ans[a]);
      fill (0);
      text (ans[a],a*20,500);
    }  
    for (int a=0;a<lengthi;a++)
    {
      if (a==b)
      {
        fill (127,255,127);
      }  
      else if (a==c)
      {
        fill (255,127,127);
      }  
      else 
      {
        fill (255,255,127);
      }  
      rect (a*20,200-2*i[a],20,2*i[a]);
      fill (0);
      text (i[a],a*20,200);
    }
  }  
}  
