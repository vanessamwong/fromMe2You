//Button object

class Button {
  String buttonText;
  color textColour;
  color buttonColour;
  float xButton;
  float yButton;
  float buttonWidth;
  float buttonHeight;
  
  Button(color buttonColour,color textColour, float xButton,float yButton,float buttonWidth,float buttonHeight) { //Constructor
    this.buttonColour=buttonColour;
    this.textColour=textColour;
    this.xButton=xButton;
    this.yButton=yButton;
    this.buttonWidth=buttonWidth;
    this.buttonHeight=buttonHeight;
  }
  //Displays the button to the screen
  void display(String buttonText, int sizeText) {
    fill(buttonColour);
    stroke(textColour);
    rect(xButton-buttonWidth/2, yButton-buttonHeight/2,buttonWidth,buttonHeight);
    textAlign(CENTER,CENTER);
    fill(textColour);
    textSize(sizeText);
    text(buttonText,xButton,yButton);
  }
  
 //custom methods for specific types of buttons to switch between pages
 
  void signUp() {
   
    if (mousePressed==true && mouseX>xButton-buttonWidth/2 && mouseX<xButton+buttonWidth/2) {
      if (mousePressed==true && mouseY>yButton-buttonHeight/2 && mouseY<yButton+buttonHeight/2) {
        welcomePage=false;
        attributesPage=true;
      }
    }    
  }

  void iAmMentor() {
    
    if (mousePressed==true && mouseX>xButton-buttonWidth/2 && mouseX<xButton+buttonWidth/2) {
      if (mousePressed==true && mouseY>yButton-buttonHeight/2 && mouseY<yButton+buttonHeight/2) {
        welcomePage=false;
        attributesPage=true;
      }
    }
  }

  void iAmApprentice() {
    
    if (mousePressed==true && mouseX>xButton-buttonWidth/2 && mouseX<xButton+buttonWidth/2) {
      if (mousePressed==true && mouseY>yButton-buttonHeight/2 && mouseY<yButton+buttonHeight/2) {
        welcomePage=false;
        attributesPage=true;
        isApprentice=true;
      }
    }
  }

  void allSet() {
    
    if (mousePressed==true && mouseX>xButton-buttonWidth/2 && mouseX<xButton+buttonWidth/2) {
      if (mousePressed==true && mouseY>yButton-buttonHeight/2 && mouseY<yButton+buttonHeight/2) {
        welcomePage=false;
        attributesPage=false;
        homePage=true;
      }
    }
  }
}
