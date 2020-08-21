class objeto
{
  void crash()
  {
    float x = 110;
    float speed = 0.5;
    int direction = 1;
    x += speed * direction;
    if ((x > width) || (x < 0)) {
    direction = -direction; // Flip direction
      }
    if (direction == 1) {
    image(botellas , x, 60); // Face right
    } else {
    image(botellas , x, 60); 
        }
    }
    
  }
