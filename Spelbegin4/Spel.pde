class Spel {

  int spatie = 50;
  int grid1x = 75;
  int grid1y = 75;
  int grid2x = 1075;
  int grid2y = 75;
  int grid1grootte = 451;
  int bootbreedte = 25;
  int bootlengte = 200;
  float bootSW;
  float[] xboot = {grid1x + 12.5, grid1x + 60.5, grid1x};
  float[] yboot = {grid1y + 12.5, grid1y + 60};
  float[] xcoordinatenblokjesgrid1  = {75, 125, 175, 225, 275, 325, 375, 425, 475} ;
  float xxcoordinatenblokjesgrid1 = 44; 
  int xxcoordinatenblokjesgrid2 = 1044;
  float[] xcoordinatenblokjesgrid2 = {1075, 1125, 1175, 1225, 1275, 1325, 1375, 1425, 1475};
  float ycoordinatenblokjesgrid2 = 44;
  int aantalcoordinatenvakjes = 9;
  float tekstnummersx = 69.5;
  int tekstnummersx2 = 568;
  float tekstnummersy = 52;
  float tekstnummersy2 = 1052;
  float tekstnummersy4 = 1208;
  int tekstknummersy3 = 58;
  int aantalboten = 2; 
  int points = 14;
  float aantalknoppen = 2;
  float knopx = 700; 
  float knopy[] = {600, 675};
  float knopgroottex = 200;
  float knopgroottey = 50;
  float schietknopy = 300.5;
  float schietknopx[] = {556, 811};
  String [] letters = {"A", "B", "C", "D", "E", "F", "G", "H", "I"};
  int [] cijfers = {1, 2, 3, 4, 5, 6, 7, 8, 9};
  String [] knoppen2 = {"Menu", "Regels"};
  float [] achtergrondx = {grid1x, grid2x};
  float [] achtergrondy = {grid2y, grid2y};
  float [] achtergrondlengte = {450, grid1grootte};
  float [] xafbeeldingknop = {knopx, knopx};
  float [] yafbeeldingknop = {600, 675};
  PImage zeeslag;
  PImage knoppen;
  PImage zeegroot;
  PImage zeeklein;
  PImage blokjexgroot;
  PImage blokjeygroot;
  PImage blokjexklein;
  PImage blokjeyklein;
  PFont lettertype;
  float [] xafbeeldingzee1 = {75, 1075};
  float [] yafbeeldingzee1 = {75, 75};
  float [] xafbeeldingzee2 = {75, 1225};
  float [] yafbeeldingzee2 = {575, 575};
  Spel() {
    bootSW = random(1, 5);
  }
  void setup1() {
    zeeslag = loadImage("zeeslag.jpg");
    knoppen = loadImage("knoppen.jpeg");
    zeegroot = loadImage("zeegroot.png");
    blokjexgroot = loadImage("blokjexgroot.jpg");
    blokjeygroot = loadImage("blokjeygroot.jpg");
    blokjexklein = loadImage("blokjexklein.jpg");
    blokjeyklein = loadImage("blokjeyklein.jpg");
    lettertype = loadFont("Times-Italic-48.vlw");
  }

  void afbeeldingentotaal() {


    image(zeeslag, 0, 0);
  }
  void afbeeldingknoppen() {
    for (int i = 0; i < aantalknoppen; i++) {
      image(knoppen, xafbeeldingknop[i], yafbeeldingknop[i]);
    }
  }

  void afbeeldingzee() {
    for (int i = 0; i < 2; i ++) { 
      for (int j = 0; j < 2; j++) {
        image(zeegroot, xafbeeldingzee1[i], yafbeeldingzee1[i]);
      }
    }
  }
  void tekst() {
    textFont(lettertype, 32);
    fill(0, 255, 0);
    text("Zeeslag ingenieursproject groep: " + points, 546, 27);
  }

  void tekstgrid12() {
    fill(0);
    textSize(25);


    for (int i=0; i < 9; i++) {
      for (int j=0; j < 9; j++) {
        text(letters[j], tekstnummersy, 107.5 + spatie * j);
        text(letters[j], tekstnummersy2, 107.5 + spatie * j);
        text(cijfers[i], 92 + spatie * i, tekstnummersx);
        text(cijfers[i], 1092 + spatie * i, tekstnummersx);
      }
    }
  }
  void afbeeldingcoordinatenblokjesgroot() {


    for (int i=0; i < 9; i++) {
      for (int j=0; j < 9; j++) {
        image(blokjeygroot, 44, 75 + spatie * j);
        image(blokjeygroot, 1044, 75 + spatie * j);
        image(blokjexgroot, 75 + spatie * i, 44);
        image(blokjexgroot, 1075 + spatie * i, 44);
      }
    }
  }




  void coordinatenblokjes() {
    fill(0, 255, 0);
    strokeWeight(4);
    for (int i = 0; i < aantalcoordinatenvakjes; i++) {
      rect(xcoordinatenblokjesgrid1[i], xxcoordinatenblokjesgrid1, spatie, 31);
      rect(xxcoordinatenblokjesgrid1, xcoordinatenblokjesgrid1[i], 31, spatie);
      rect(xcoordinatenblokjesgrid2[i], xxcoordinatenblokjesgrid1, spatie, 31);
      rect(xxcoordinatenblokjesgrid2, xcoordinatenblokjesgrid1[i], 31, spatie);
      
      for (int j = 0; j < aantalknoppen; j++) {
        rect(knopx, knopy[j], knopgroottex, knopgroottey);
      }
    }
  } 

  void tekstknoppen() {
    textSize(25);
    fill(0);

    for (int i=0; i < 2; i++) {
      float a = 763;
      text(knoppen2 [i], a, 633 + 75 * i);
    }
  } 

  void achtergrond() {
    fill (0, 100, 200);

    for (int i = 0; i < 2; i++) 
      rect(achtergrondx [i], achtergrondy [i], achtergrondlengte[i], achtergrondlengte [i]);
  }

  void boot() {

    fill (200, 20, 20);
    strokeWeight(bootSW);

    for (int i = 0; i < aantalboten; i++) {
      if (xboot[i] >= 0) {
        rect(xboot[i], yboot[i], 80, 25);
      }
    }
  }

  void grid1() {
    stroke (255);
    strokeWeight (2);
    //grid1
    for (int i = 75; i < grid1x + grid1grootte; i = i + spatie) 
    {
      line (grid1x, i, grid1x + grid1grootte, i );
      line (i, grid1y, i, grid1x + grid1grootte );
    }
  }
  void grid2() {
    stroke (255);
    strokeWeight (2);
    //grid2
    for (int j = 75; j < grid2y + grid1grootte; j = j + spatie) 
    {
      line (grid2x, j, grid2x + grid1grootte, j );
    }
    for (int j = 1075; j < grid2x + grid1grootte; j = j + spatie) 
    {
      line (j, grid2y, j, grid2y + grid1grootte );
    }
  }
  
  
}