void setup()
{
  size(200, 200);
}

void draw()
{
  String age = "35";
  String z = "Salar Salim";
  Boolean happy = true;

  if (mousePressed == true)
  {
    println("Hi, my name is "+z+" "+"I am "+age+" years old");
  }
  if (keyPressed == false)
     {
       println("I dont clap my hands");
     }
}
