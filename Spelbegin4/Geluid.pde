  import ddf.minim.*;
class Geluid
{

  Minim minim;
AudioPlayer player;
  
  

  void keyPressed(){
     minim = new Minim(this);
  player = minim.loadFile("background.mp3");
if (keyPressed) {
    if (key == 'm' || key == 'M') 
{
  if ( player.isPlaying() )
  {
    player.pause();
  }

  else if ( player.position() == player.length() )
  {
    player.rewind();
    player.play();
  }
  else
  {
    player.play();
  }}}
}
  
}