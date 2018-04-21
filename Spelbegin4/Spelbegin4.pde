import ddf.minim.*;
Spel spel = new Spel();
Tijd startTimer = new Tijd(60);
Geluid geluid = new Geluid();
SchipSpeler1 schepen1 = new SchipSpeler1();
SchipSpeler2 schepen2 = new SchipSpeler2();
Minim minim; 
AudioPlayer player;
boolean readyPlayer1 = false;


void setup() {
  size(1600, 1000);
  frameRate(60);
  spel.setup1();
  minim = new Minim(this);
  player = minim.loadFile("background.mp3");
  keyPressed();
}

void draw() {
  background(90);
  spel.afbeeldingentotaal();
  spel.achtergrond();
  spel.afbeeldingzee();
  spel.grid1();
  spel.grid2();
  spel.tekst();
  spel.coordinatenblokjes();
  spel.afbeeldingknoppen();
  spel.afbeeldingcoordinatenblokjesgroot();
  spel.tekstknoppen();
  spel.tekstgrid12();
  startTimer.telnaarbeneden();
  startTimer.teksttimer();
  boatPlacement();
}

private void boatPlacement () {
  schepen1.speler1Boten();
  if (player1PlacedBoats) {
    schepen2.speler2Boten ();
  }
}

void keyPressed() {
  if (keyPressed) {
    if (key == 'm' || key == 'M') 
    {
      if ( player.isPlaying() )
      {
        player.pause();
      } else if ( player.position() == player.length() )
      {
        player.rewind();
        player.play();
      } else
      {
        player.play();
      }
    }
  }
}