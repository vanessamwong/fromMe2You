//global boolean variables control which page is presented
boolean welcomePage;
boolean attributesPage=false;
boolean isApprentice=false;
boolean homePage=false;
PImage logo;
int textSpace=50;
//all buttons used on the website
Button signUpMentor;
Button signUpApprentice;
Button sheHer;
Button heHim;
Button theyThem;
Button other;
Button womenPlus;
Button BIPOC;
Button LGBTQ;
Button other2;
Button tech;
Button finance;
Button art;
Button socialJustice;
Button allSet;

void setup() {
  size(700,600);
  welcomePage=true;
  logo= loadImage("fromMe2You logo.png");
  logo.resize(150,150);
  //initializing the Button objects
  signUpMentor= new Button(#eb8024, #e6ddeb, width/3, height/1.25, 150, 75);
  signUpApprentice= new Button(#78408e, #e6ddeb, width-width/3, height/1.25, 150, 75);
  sheHer= new Button(#eb8024, #e6ddeb, 275, height/10+textSpace*2.5, 100, 40);
  heHim= new Button(#eb8024, #e6ddeb, 150, height/10+textSpace*2.5, 100, 40);
  theyThem= new Button(#eb8024, #e6ddeb, 400, height/10+textSpace*2.5, 100, 40);
  other= new Button(#eb8024, #e6ddeb, 525, height/10+textSpace*2.5, 100, 40);
  womenPlus= new Button(#eb8024, #e6ddeb, 275, height/10+textSpace*5.5, 100, 40);
  BIPOC= new Button(#eb8024, #e6ddeb, 150, height/10+textSpace*5.5, 100, 40);
  LGBTQ= new Button(#eb8024, #e6ddeb, 400, height/10+textSpace*5.5, 100, 40);
  other2= new Button(#eb8024, #e6ddeb, 525, height/10+textSpace*5.5, 100, 40);
  tech= new Button(#eb8024, #e6ddeb, 275, height/10+textSpace*8.5, 100, 40);
  finance= new Button(#eb8024, #e6ddeb, 150, height/10+textSpace*8.5, 100, 40);
  art= new Button(#eb8024, #e6ddeb, 400, height/10+textSpace*8.5, 100, 40);
  socialJustice= new Button(#eb8024, #e6ddeb, 525, height/10+textSpace*8.5, 100, 40);
  allSet= new Button(#371141, #e6ddeb, width/2, height/1.1, 100, 40);
}

void draw() {
  background(#e6ddeb);
  
  //default/landing page
  if (welcomePage==true) {
    image(logo,width/1.75,height/5.5);
    textAlign(CENTER,CENTER);
    fill(#371141);
    textSize(40);
    text("fromMe2You", width/2.75, height/3.5);
    textSize(18);
    text("It pays to help others.", width/2.75, height/2.75);
    textSize(24);
    text("SIGN UP TODAY!", width/2,height/2);
    text("I AM A(N):", width/2, height/1.75);
    signUpMentor.display("MENTOR",18);
    signUpMentor.iAmMentor();
    signUpApprentice.display("APPRENTICE",18);
    signUpApprentice.iAmApprentice();
    
    
  }
  
  //Account customization page! The different categories will help people connect with individuals whom they share backgrounds with!
  
  if (attributesPage==true) {
    fill(#371141);
    textSize(28);
    text("Welcome! Tell us a bit about yourself.", width/2, height/10);
    textSize(24);
    text("Preferred pronouns?", width/2, height/10+textSpace);
    text("Communities you identify with?", width/2, height/10+textSpace*4);
    text("Interests?", width/2, height/10+textSpace*7);
    sheHer.display("SHE/HER",16);
    heHim.display("HE/HIM",16);
    theyThem.display("THEY/THEM",16);
    other.display("OTHER",16);
    allSet.display("ALL SET!",16);
    allSet.allSet();
    womenPlus.display("WOMEN+",16);
    BIPOC.display("BIPOC",16);
    LGBTQ.display("LGBTQ+",16);
    other2.display("OTHER",16);
    tech.display("TECH",16);
    finance.display("FINANCE",16);
    art.display("ART",16);
    socialJustice.display("SOCIAL\nJUSTICE",14);
  }
  
  //Home page of the website if the user selected "MENTOR"
  
  if (homePage==true && isApprentice==false) {
    int circleX = width/2;
    int circleY = height/2;
    ellipse(circleX,circleY,600,600);
    ellipse(circleX,circleY,400,400);
    ellipse(circleX,circleY,200,200);
    
  int fromCenter = (int) dist(circleX,circleY,mouseX,mouseY);
  
  if (fromCenter < 100) {
    background(#e6ddeb);
    fill(#371141);
    ellipse(circleX,circleY,200,200);
    fill(#e6ddeb);
    textSize(32);
    text("Shop", width/2, height/2.5);
    textSize(16);
    text("Spend your points\non some swag!", width/2, height/2);
    
  }
  
  else if  (fromCenter < 200) {
    background(#e6ddeb);
    fill(#eb8024);
    ellipse(circleX,circleY,400,400);
    fill(#e6ddeb);
    ellipse(circleX,circleY,200,200);
    fill(#eb8024);
    textSize(32);
    text("Advise", width/2, height/2.5);
    textSize(16);
    text("Give advice to\nthe next generation\nof innovators!", width/2, height/2);
    
  }
  
  else if (fromCenter < 300) {
    fill(#78408e);
    ellipse(circleX,circleY,600,600);
    fill(#e6ddeb);
    ellipse(circleX,circleY,400,400);
    ellipse(circleX,circleY,200,200);
    fill(#78408e);
    textSize(32);
    text("Network", width/2, height/2.5);
    textSize(16);
    text("Show off your skills and work\nexperience while connecting with bright\nminds! Who knows what you'll come up with?", width/2, height/2);
    }
    
  else {
    background(#e6ddeb);
    fill(#371141);
    textSize(28);
    text("Move your cursor to see different features!", width/2, height/2);
    }
  }
  
  //Home page of website if the user selected "APPRENTICE"
  
  if (homePage==true && isApprentice==true) {
    int circleX = width/2;
    int circleY = height/2;
    ellipse(circleX,circleY,600,600);
    ellipse(circleX,circleY,400,400);
    ellipse(circleX,circleY,200,200);
    
  int fromCenter = (int) dist(circleX,circleY,mouseX,mouseY);
  
  if (fromCenter < 100) {
    background(#e6ddeb);
    fill(#371141);
    ellipse(circleX,circleY,200,200);
    fill(#e6ddeb);
    textSize(32);
    text("Chat", width/2, height/2.5);
    textSize(16);
    text("Make some friends\nwith common interests!", width/2, height/2);
    
  }
  
  else if  (fromCenter < 200) {
    background(#e6ddeb);
    fill(#eb8024);
    ellipse(circleX,circleY,400,400);
    fill(#e6ddeb);
    ellipse(circleX,circleY,200,200);
    fill(#eb8024);
    textSize(32);
    text("Connect", width/2, height/2.5);
    textSize(16);
    text("Speak with our\neager mentors!", width/2, height/2);
    
  }
  
  else if (fromCenter < 300) {
    fill(#78408e);
    ellipse(circleX,circleY,600,600);
    fill(#e6ddeb);
    ellipse(circleX,circleY,400,400);
    ellipse(circleX,circleY,200,200);
    fill(#78408e);
    textSize(32);
    text("Discover", width/2, height/2.5);
    textSize(16);
    text("Take a look at our postings for openings\n you may be interested in! Volunteer work, \ninternships, executive positions and more!", width/2, height/2);
    }
    
  else {
    background(#e6ddeb);
    fill(#371141);
    textSize(28);
    text("Move your cursor to see different features!", width/2, height/2);
    }
  }
}
