 int numOf1, numOf2, numOf3, numOf4, numOf5, numOf6, totalNum = 0;
 
void setup()
{
  size(600, 700);
  noLoop();
}
void draw()
{
  background(0);
  for (int y = 100; y <= 695; y+= 20)
  {
    for (int x = 0; x <= 595; x += 20)
    {
      Die dice = new Die(x, y);
      dice.show();
      if (dice.randInt == 1)
      {
        numOf1 ++;
        totalNum += 1;
      }
      else if (dice.randInt == 2)
      {
        numOf2 ++;
        totalNum += 2;
      }
      else if (dice.randInt == 3)
      {
        
        numOf3 ++;
        totalNum += 3;
      }
      else if (dice.randInt == 4)
      {
      
        numOf4 ++;
        totalNum += 4;
      }
      else if (dice.randInt == 5)
      {
        numOf5 ++;
        totalNum += 5;
      }
      else
      {
        numOf6 ++;
        totalNum += 6;
      }
    } 

  }
  text("Number Of 1s: " + numOf1, 10, 20);
  text("Number Of 2s: " + numOf2, 10, 50);
  text("Number Of 3s: " + numOf3, 10, 80);
  text("Number Of 4s: " + numOf4, 140, 20);
  text("Number Of 5s: " + numOf5, 140, 50);
  text("Number Of 6s: " + numOf6, 140, 80);
  textSize(28);
  text("Total Value Of Dice: " + totalNum, 250, 60);
}
void mousePressed()
{
  redraw();
  numOf1 = 0;
  numOf2 = 0;
  numOf3 = 0;
  numOf4 = 0;
  numOf5 = 0;
  numOf6 = 0;
  totalNum = 0;
  textSize(11);
}
class Die //models one single dice cube
{
  int diceX, diceY;
  int randInt;
  
  Die(int x, int y) //constructor
  {
    diceX = x;
    diceY = y;
    roll();
  }
  void roll()
  {
    if ((int)(Math.random() * 6) + 1 == 1)
    {
      randInt = 1;
    }
    else if ((int)(Math.random() * 6) + 1 == 2)
    {
      randInt = 2;
    }
    else if ((int)(Math.random() * 6) + 1 == 3)
    {
      randInt = 3;
    }
    else if ((int)(Math.random() * 6) + 1 == 4)
    {
      randInt = 4;
    }
    else if ((int)(Math.random() * 6) + 1 == 5)
    {
      randInt = 5;
    }
    else
    {
      randInt = 6;
    }
  }
  void show()
  {
    fill((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
    rect(diceX, diceY, 20, 20, 5);
    fill(0);
    if (randInt == 1)
    {
      ellipse(diceX + 10, diceY + 10, 3, 3);
    }
    else if (randInt == 2)
    {
      ellipse(diceX + 5, diceY + 5, 3, 3);
      ellipse(diceX + 15, diceY + 15, 3, 3);
    }
    else if (randInt == 3)
    {
      ellipse(diceX + 10, diceY + 10, 3, 3);
      ellipse(diceX + 5, diceY + 5, 3, 3);
      ellipse(diceX + 15, diceY + 15, 3, 3);
    }
    else if (randInt == 4)
    {
      ellipse(diceX + 5, diceY + 5, 3, 3);
      ellipse(diceX + 15, diceY + 15, 3, 3);
      ellipse(diceX + 5, diceY + 15, 3, 3);
      ellipse(diceX + 15, diceY + 5, 3, 3);
    }
    else if (randInt == 5)
    {
      ellipse(diceX + 5, diceY + 5, 3, 3);
      ellipse(diceX + 15, diceY + 15, 3, 3);
      ellipse(diceX + 5, diceY + 15, 3, 3);
      ellipse(diceX + 15, diceY + 5, 3, 3);
      ellipse(diceX + 10, diceY + 10, 3, 3);
    }
    else
    {
      ellipse(diceX + 5, diceY + 5, 3, 3);
      ellipse(diceX + 15, diceY + 15, 3, 3);
      ellipse(diceX + 5, diceY + 15, 3, 3);
      ellipse(diceX + 15, diceY + 5, 3, 3);
      ellipse(diceX + 5, diceY + 10, 3, 3);
      ellipse(diceX + 15, diceY + 10, 3, 3);
    }
    fill(255);
  }
}
