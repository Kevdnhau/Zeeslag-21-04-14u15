class Tijd
{
  float Tijd;

  Tijd(float set) {
    Tijd = set;
  }

  float getTime() {
    return(Tijd);
  }
  void zetTijd(float set) {
    Tijd = set;
  }
  void telnaarbeneden() {
    Tijd -= 1/frameRate;
  }
  void teksttimer() {
    textSize(50);
    text(startTimer.getTime(), 722, 150);
  }
}