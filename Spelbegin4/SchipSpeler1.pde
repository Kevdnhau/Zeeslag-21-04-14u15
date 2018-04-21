public final int breedteSchip = 30;

public boolean player1PlacedBoats = false;

//Aircraft Carrier instantie variabelen
public float aircraftLocX;
public float aircraftLocY;
public boolean aircraftHorizontal = true;

//Battleship instantie variabelen
public float battleshipLocX;
public float battleshipLocY;
public boolean battleshipHorizontal = true;

//Cruiser instantie variabelen
public float cruiserLocX;
public float cruiserLocY;
public boolean cruiserHorizontal = true;

//Destroyer1 instantie variabelen
public float destroyer1LocX;
public float destroyer1LocY;
public boolean destroyer1Horizontal = true;

//Destroyer1 instantie variabelen
public float destroyer2LocX;
public float destroyer2LocY;
public boolean destroyer2Horizontal = true;

//Submarine1 instantie variabelen
public float submarine1LocX;
public float submarine1LocY;
public boolean submarine1Horizontal = true;

//Submarine1 instantie variabelen
public float submarine2LocX;
public float submarine2LocY;
public boolean submarine2Horizontal = true;

public class SchipSpeler1
{
  private final int locationInterfaceX = 40;
  private final int locationInterfaceY = 550;

  //Aircraft Carrier lokale variabelen
  private float aircraftX = 12 + locationInterfaceX;
  private float aircraftY = 72 + locationInterfaceY;  
  private boolean moveAircraft = false;
  private boolean aircraftPlacementStage = true;  
  private final int aircraftl = 240;
  private int aircraftLength = aircraftl;
  private int aircraftWidth = breedteSchip;

  //Battleship lokale variabelen
  private float battleshipX = 32 + locationInterfaceX;
  private float battleshipY = 147 + locationInterfaceY;
  private boolean moveBattleship = false;
  private boolean battleshipPlacementStage = false;
  private final int battleshipl = 190;
  private int battleshipLength = battleshipl;
  private int battleshipWidth = breedteSchip;

  //Cruiser lokale variabelen
  private float cruiserX = 52 + locationInterfaceX;
  private float cruiserY = 222 + locationInterfaceY;
  private boolean moveCruiser = false;
  private boolean cruiserPlacementStage = false;
  private final int cruiserl = 140;
  private int cruiserLength = cruiserl;
  private int cruiserWidth = breedteSchip;

  //Destroyer1 lokale variabelen
  private float destroyerX = 25 + locationInterfaceX;
  private float destroyerY = 297 + locationInterfaceY;
  private boolean moveDestroyer = false;
  private boolean destroyerPlacementStage = false;
  private final int destroyerl = 90;
  private int destroyerLength = destroyerl;
  private int destroyerWidth = breedteSchip;

  //Destroyer 2 lokale variabelen
  private float destroyer2X = 150 + locationInterfaceX;
  private float destroyer2Y = 297 + locationInterfaceY;
  private boolean moveDestroyer2 = false;
  private boolean destroyer2PlacementStage = false;
  private int destroyer2Length = destroyerl;
  private int destroyer2Width = breedteSchip;

  //Submarine1 lokale variabelen
  private float submarineX = 51 + locationInterfaceX;
  private float submarineY = 372 + locationInterfaceY;
  private boolean moveSubmarine = false;
  private boolean submarinePlacementStage = false;
  private final int submarinel = 40;
  private int submarineLength = submarinel;
  private int submarineWidth = breedteSchip;

  //submarine 2 lokale variabelen
  private float submarine2X = 180 + locationInterfaceX;
  private float submarine2Y = 372 + locationInterfaceY;
  private boolean moveSubmarine2 = false;
  private boolean submarine2PlacementStage = false;
  private int submarine2Length = submarinel;
  private int submarine2Width = breedteSchip;

  private boolean boatSelectionPalet = true;

  public void speler1Boten () {
    boatSelection ();
    aircraft();
    battleship();
    cruiser();
    destroyer1();
    destroyer2();
    submarine1();
    submarine2();
  }

  private void boatSelection () {
    if (boatSelectionPalet == true) {
      fill (255);
      stroke (0);
      rect(locationInterfaceX,locationInterfaceY, 265, 40);
      for (int i=0; i<5; i++) {
        rect(locationInterfaceX, 55 + locationInterfaceY + 75 * i, 265, 65);
      }
      textSize(30); 
      fill (0);
      text("Boat Selection", 45 + locationInterfaceX, 35 + locationInterfaceY);
    }
  }

  //Aircraft = rode vierhoek
  public void aircraft () {
    if (aircraftPlacementStage == true) {      
      if (mouseX > aircraftX && mouseX < aircraftX+aircraftl && mouseY > aircraftY && mouseY < aircraftY+breedteSchip) {
        stroke(255);
        strokeWeight(2);
        fill(161, 15, 15);        
        if (mousePressed) {
          moveAircraft = true;
        }
      } else {
        stroke(0);
        strokeWeight(2);
        fill(255, 0, 0);
      }
      if (moveAircraft == true && mousePressed) {        
        aircraftX = mouseX;
        aircraftY = mouseY;
      }
      if (keyPressed && moveAircraft) {
        if (key == 'v' || key == 'V') {
          aircraftWidth = aircraftl;
          aircraftLength = breedteSchip;
          aircraftHorizontal = false;
        }
        if (key == 'h' || key == 'H') {
          aircraftWidth = breedteSchip;
          aircraftLength = aircraftl;
          aircraftHorizontal = true;
        }
        if (key == 'p' || key == 'P') {
          aircraftLocX = aircraftX;
          aircraftLocY = aircraftY;
          moveAircraft = false;
          aircraftPlacementStage = false;
          battleshipPlacementStage = true;
        }
      }
    }
    if (aircraftPlacementStage == false) {
      stroke(0);
      strokeWeight(2);
      fill(255, 0, 0);
    }
    rect(aircraftX, aircraftY, aircraftLength, aircraftWidth);
  }

  //battleship is groen

  public void battleship () {
    if (battleshipPlacementStage == true) {
      if (mouseX > battleshipX && mouseX < battleshipX+battleshipl && mouseY > battleshipY && mouseY < battleshipY+breedteSchip) {
        stroke(255);
        strokeWeight(2);
        fill(13, 131, 9);        
        if (mousePressed) {
          moveBattleship = true;
        }
      } else {
        fill(0, 255, 0);
        stroke(0);
        strokeWeight(2);
      }
      if (moveBattleship && mousePressed) {
        battleshipX = mouseX;
        battleshipY = mouseY;
      }
      if (keyPressed && moveBattleship) {
        if (key == 'v' || key == 'V') {
          battleshipWidth = battleshipl;
          battleshipLength = breedteSchip;
          battleshipHorizontal = false;
        }
        if (key == 'h' || key == 'H') {
          battleshipWidth = breedteSchip;
          battleshipLength = battleshipl;
          battleshipHorizontal = true;
        }
        if (key == 'p' || key == 'P') {
          battleshipLocX = battleshipX;
          battleshipLocY = battleshipY;
          moveBattleship = false;
          battleshipPlacementStage = false;
          cruiserPlacementStage = true;
        }
      }
    }
    if (battleshipPlacementStage == false) {
      fill(0, 255, 0);
      stroke(0);
      strokeWeight(2);
    }
    rect(battleshipX, battleshipY, battleshipLength, battleshipWidth);
  }

  //cruiser is blauw

  public void cruiser () {   
    if (cruiserPlacementStage) {
      if (mouseX > cruiserX && mouseX < cruiserX+cruiserl && mouseY > cruiserY && mouseY < cruiserY+breedteSchip) {
        stroke(255);
        strokeWeight(2);
        fill(11, 19, 100);       
        if (mousePressed) {
          moveCruiser = true;
        }
      } else {
        fill(0, 0, 255);
        stroke(0);
        strokeWeight(2);
      }
      if (moveCruiser == true && mousePressed) {
        cruiserX = mouseX;
        cruiserY = mouseY;
      }
      if (keyPressed && moveCruiser) {
        if (key == 'v' || key == 'V') {
          cruiserWidth = cruiserl;
          cruiserLength = breedteSchip;
          cruiserHorizontal = false;
        }
        if (key == 'h' || key == 'H') {
          cruiserWidth = breedteSchip;
          cruiserLength = cruiserl;
          cruiserHorizontal = true;
        }
        if (key == 'p' || key == 'P') {
          cruiserLocX = cruiserX;
          cruiserLocY = cruiserY;         
          moveCruiser = false;
          cruiserPlacementStage = false;
          destroyerPlacementStage = true;
        }
      }
    }
    if (cruiserPlacementStage == false) {
      fill(0, 0, 255);
      stroke(0);
      strokeWeight(2);
    }
    rect(cruiserX, cruiserY, cruiserLength, cruiserWidth);
  }

  //destroyer is geel
  public void destroyer1() {   
    if (destroyerPlacementStage == true) {
      if (mouseX > destroyerX && mouseX < destroyerX+destroyerl && mouseY > destroyerY && mouseY < destroyerY+breedteSchip) {
        stroke(255);
        strokeWeight(2);
        fill(245, 245, 20);        
        if (mousePressed) {
          moveDestroyer = true;
        }
      } else {
        fill(255, 255, 0);
        stroke(0);
        strokeWeight(2);
      }
      if (moveDestroyer == true && mousePressed) {
        destroyerX = mouseX;
        destroyerY = mouseY;
      }
      if (keyPressed && moveDestroyer) {
        if (key == 'v' || key == 'V') {
          destroyerWidth = destroyerl;
          destroyerLength = breedteSchip;
          destroyer1Horizontal = false;
        }
        if (key == 'h' || key == 'H') {
          destroyerWidth = breedteSchip;
          destroyerLength = destroyerl;
          destroyer1Horizontal = true;
        }
        if (key == 'p' || key == 'P') {
          destroyer1LocX = destroyerX;
          destroyer1LocY = destroyerY;
          moveDestroyer = false;
          destroyerPlacementStage = false;
          destroyer2PlacementStage = true;
        }
      }
    }
    if (destroyerPlacementStage == false) {
      fill(255, 255, 0);
      stroke(0);
      strokeWeight(2);
    }
    rect(destroyerX, destroyerY, destroyerLength, destroyerWidth);
  }

  public void destroyer2() {    
    if (destroyer2PlacementStage == true) {
      if (mouseX > destroyer2X && mouseX < destroyer2X+destroyerl && mouseY > destroyer2Y && mouseY < destroyer2Y+breedteSchip) {
        stroke(255);
        strokeWeight(2);
        fill(245, 245, 20);        
        if (mousePressed) {
          moveDestroyer2 = true;
        }
      } else {
        fill(255, 255, 0);
        stroke(0);
        strokeWeight(2);
      }
      if (moveDestroyer2 == true && mousePressed) {
        destroyer2X = mouseX;
        destroyer2Y = mouseY;
      }
      if (keyPressed && moveDestroyer2) {
        if (key == 'v' || key == 'V') {
          destroyer2Width = destroyerl;
          destroyer2Length = breedteSchip;
          destroyer2Horizontal = false;
        }
        if (key == 'h' || key == 'H') {
          destroyer2Width = breedteSchip;
          destroyer2Length = destroyerl;
          destroyer2Horizontal = true;
        }
        if (key == 'p' || key == 'P') {
          destroyer2LocX = destroyer2X;
          destroyer2LocY = destroyer2Y;
          moveDestroyer = false;
          destroyer2PlacementStage = false;
          submarinePlacementStage = true;
        }
      }
    }
    if (destroyer2PlacementStage == false) {
      fill(255, 255, 0);
      stroke(0);
      strokeWeight(2);
    }
    rect(destroyer2X, destroyer2Y, destroyer2Length, destroyer2Width);
  }

  //submarine is paars
  public void submarine1() {
    if (submarinePlacementStage == true) {
      if (mouseX > submarineX && mouseX < submarineX+breedteSchip && mouseY > submarineY && mouseY < submarineY+submarinel) {
        stroke(255);
        strokeWeight(2);
        fill(138, 12, 121);
        if (mousePressed) {
          moveSubmarine = true;
        }
      } else {
        fill(138, 12, 121);
        stroke(0);        
        strokeWeight(2);
      }
      if (moveSubmarine == true && mousePressed) {
        submarineX = mouseX;
        submarineY = mouseY;
      }
      if (keyPressed && moveSubmarine) {
        if (key == 'v' || key == 'V') {
          submarineWidth = submarinel;
          submarineLength = breedteSchip;
          submarine1Horizontal = false;
        }
        if (key == 'h' || key == 'H') {
          submarineWidth = breedteSchip;
          submarineLength = submarinel;
          submarine1Horizontal = true;
        }
        if (key == 'p' || key == 'P') {
          submarine1LocX = submarineX;
          submarine1LocY = submarineY;
          moveSubmarine = false;
          submarinePlacementStage = false;
          submarine2PlacementStage = true;
        }
      }
    }
    if (submarinePlacementStage == false) {
      fill(138, 12, 121);
      stroke(0);        
      strokeWeight(2);
    }    
    rect(submarineX, submarineY, submarineLength, submarineWidth);
  }

  public void submarine2() {
    if (submarine2PlacementStage == true) {
      if (mouseX > submarine2X && mouseX < submarine2X +breedteSchip && mouseY > submarine2Y && mouseY < submarine2Y +submarinel) {
        stroke(255);
        strokeWeight(2);
        fill(138, 12, 121);        
        if (mousePressed) {
          moveSubmarine2 = true;
        }
      } else {
        fill(138, 12, 121);
        stroke(0);        
        strokeWeight(2);
      }
      if (moveSubmarine2 == true && mousePressed) {
        submarine2X = mouseX;
        submarine2Y = mouseY;
      }
      if (keyPressed && moveSubmarine2) {
        if (key == 'v' || key == 'V') {
          submarine2Width = submarinel;
          submarine2Length = breedteSchip;
          submarine2Horizontal = false;
        }
        if (key == 'h' || key == 'H') {
          submarine2Width = breedteSchip;
          submarine2Length = submarinel;
          submarine2Horizontal = true;
        }
        if (key == 'p' || key == 'P') {
          submarine2LocX = submarine2X;
          submarine2LocY = submarine2Y;
          moveSubmarine2 = false;
          submarine2PlacementStage = false;
          boatSelectionPalet = false;
          player1PlacedBoats = true;
        }
      }
    }
    if (submarine2PlacementStage == false) {
      fill(138, 12, 121);
      stroke(0);        
      strokeWeight(2);
    }
    rect(submarine2X, submarine2Y, submarine2Length, submarine2Width);
  }
}