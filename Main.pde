
import java.util.Random;



final int width = 1280;
final int height = 720;

ArrayList<Leaf> leafs = new ArrayList<Leaf>();
Random r = new Random();

int maxLeafs = 200;
Vector2 wind = new Vector2(0.4f,0);

void setup() {
  size(1280, 720);
  
  for(int i = 0; i < 10;i++){
      Leaf a = new Leaf();
      leafs.add(a);
  }
  
}



void draw() {
  background(0);

  if(r.nextInt(3) == 1){
    Leaf a = new Leaf();
    leafs.add(a);
    
    if(leafs.size() > maxLeafs){
      leafs.remove(0);
    }
  }

  if(r.nextInt(15) == 1){
    float min = -2;
    float max = 2;
    double random = min + Math.random() * (max - min);
    wind = new Vector2((float)random,0);
  }

  
  for(Leaf l : leafs){
    
    l.applyForce(new Vector2(0,0.5));
    l.applyForce(wind);
    l.update();
    l.draw();
  }
  
   

    //for(Leaf l : leafs){
     
    //    float min = -5;
    //    float max = 5;
    //    double random = min + Math.random() * (max - min);
    //    l.applyForce(new Vector2((float)random,0));
        
    //    // wind
    //    l.applyForce(new Vector2(2,0));
      
    //}

  
  
  
}

void mousePressed() {
       Leaf a = new Leaf();
      leafs.add(a);
}

void mouseReleased() {

}
