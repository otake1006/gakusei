String []p ;
String []mon;
String []mondaisu;
 int x =0;
 int seikaisu = 0;
 int s = 0;
 int seikai = 0;
 int kotae =0;
void setup(){
  size(800,600);
  PFont font = createFont("MS Gothic",24);
  textFont(font);
  background(255);
  fill(0);
  textSize(50);
  textAlign(CENTER);
  text("問題",400,300);
  mondaisu = loadStrings("questions.txt");
}

void draw(){}

void quiz(int z){
 p = loadStrings("questions.txt");
 mon = split(p[z],",");
}
   
void hyouzi(String [] b){ 
  int y =0;
  text(b[0],400,100);
  for(int i= 2;i<b.length;i++){
    textAlign(LEFT);
    text(y+1,150,200+y*100);
    text(b[i],200,200+y*100);
    y++;
   }
 }

void mousePressed(){
  textAlign(CENTER);
  background(255);
  if (mouseX > 150 && mouseX < 600) {
        // クリックしたy座標によって選択したボタンを判別
        if (mouseY > 150 && mouseY < 200) {
            kotae = 1;
            println("a");
        } else if (mouseY > 250 && mouseY < 300) {
            kotae = 2;
        } else if (mouseY > 350 && mouseY < 400) {
           kotae = 3;
        } else if (mouseY > 450 && mouseY < 500){
           kotae = 4;
        }}
  if(s%2==0 && s < mondaisu.length*2 ){
    quiz(x);
    hyouzi(mon);
    seikai =  Integer.parseInt(mon[1]);
    x++;
   }else if(s%2==1 && seikai == kotae && s < mondaisu.length*2){
           textAlign(CENTER);
           background(255);
           text("正解",400,300);
           seikaisu++;
   }else if(s%2==1 && seikai != kotae && s < mondaisu.length*2){
           textAlign(CENTER);
           background(255);
           text("不正解",400,300);
    
   }
s++;


  
if(s>mondaisu.length*2){
  kotae = seikai;
  textAlign(CENTER);
  text("結果正解は"+seikaisu+"問でした",400,300);



}  
  
  }
