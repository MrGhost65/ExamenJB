class Player extends GameObject{

 
  Player(String image, Vector2 initPos){
    super(image, initPos);
  }
  
 

  void ProcessInput(){
    if (keyPressed) {
     if (key == 'w'||  key == 'W') {
       
      println(transform.rotation);
      float angleInRadians = radians(transform.rotation - 90); 
      Vector2 forward = new Vector2(cos(angleInRadians), sin(angleInRadians)); 
      println(forward.x + " " + forward.y);
      transform.Translate(forward);
  }
    if (key == 'a'  || key == 'A') {
            transform.Rotate(-5); 
        }
         if (key == 'd' || key == 'D') {
            transform.Rotate(5); 
         }
     }
   }
 }
