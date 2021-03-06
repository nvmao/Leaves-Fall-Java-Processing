
class Vector2{
  
  float x;
  float y;
  
  public Vector2(float x,float y){
    this.x = x;
    this.y = y;
  }
  
   public Vector2(){
    this.x = 0;
    this.y = 0;
  }
  
  public Vector2 add(Vector2 a){
    Vector2 result = new Vector2(x,y);
    
    result.setX(result.getX() + a.getX());
    result.setY(result.getY() + a.getY());

    return result;
  }
  
  public Vector2 minus(Vector2 a){
    Vector2 result = new Vector2(x,y);
    
    result.setX(result.getX() - a.getX());
    result.setY(result.getY() - a.getY());

    return result;
  }
  
  public Vector2 mul(Vector2 a){
    Vector2 result = new Vector2(x,y);
    
    result.setX(result.getX() * a.getX());
    result.setY(result.getY() * a.getY());

    return result;
  }
  
  public Vector2 div(Vector2 a){
    Vector2 result = new Vector2(x,y);
    
    result.setX(result.getX() / a.getX());
    result.setY(result.getY() / a.getY());

    return result;
  }
  
  public Vector2 normalized(){
    Vector2 a = new Vector2(x,y);
    float mag = sqrt(this.x*this.x + this.y*this.y);
    
    a = a.div(new Vector2(mag,mag));
    
    return a;
  }
  
  
   public double distance(Vector2 a){
    float x1 = x;
    float x2 = a.getX();
    float y1 = y;
    float y2 = a.getY();
    double dis;
    dis=Math.sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));  
    return dis;
  }
  
  public float getX(){
    return x;
  }
  public float getY(){
    return y;
  }
  
  public void setX(float x){
    this.x = x;
  }
  public void setY(float y){
    this.y = y;
  }
}

  
