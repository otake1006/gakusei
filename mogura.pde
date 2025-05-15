int xhazime = 50;
int xowari  = 200;
int yhazime = 135;
int yowari  = 220;
void setup(){
  size(1000,500);//画面サイズ
  //土台を表示
  dai();
  //モグラの顔を表示
   fill(255,255,0);
 arc(150,210,150,150,radians(180),radians(360));
  fill(0);
  ellipse(150,210,20,20);//鼻
  ellipse(185,190,20,20);//右目
  ellipse(115,190,20,20);//左目
  
   //ひげを描く
  for(int y = 0;y<=2;++y){ 
    line(150,210,175,200 + y*10);
    line(150,210,125,200 + y*10);}
   }
 
 void draw(){

  float yoko;
  float tate;
 
 if(mousePressed == true){
   
   //上段をクリックしたとき
   if(mouseX >= xhazime && mouseX < xowari && mouseY >= yhazime && mouseY <  yowari&& yhazime >= 135 && yowari <=220){
     mouseHit(1);}
     
     //下段をクリックしたとき
    else if(mouseX >= xhazime && mouseX < xowari && mouseY >= yhazime && mouseY <  yowari && yhazime >= 335 && yowari <= 420){
      mouseHit(0);}
     
     //モグラがいる場所をクリックしたとき
   if(mouseX >= xhazime && mouseX < xowari && mouseY >= yhazime && mouseY <  yowari){
  
   background(204);
   //土台を表示
   dai();
  //モグラの位置を決める
  yoko = random(0,3);
  tate  = random(0,2);
  
  //モグラの顔を表示
  fill(255,255,0);
  arc(150+int(yoko)*300,210+int(tate)*200,150,150,radians(180),radians(360));//顔の輪郭
  fill(0);
  ellipse(150+int(yoko)*300,210+int(tate)*200,20,20);//鼻
  ellipse(185+int(yoko)*300,190+int(tate)*200,20,20);//右目
  ellipse(115+int(yoko)*300,190+int(tate)*200,20,20);//左目
  hige(yoko,tate);//ひげを描く
 
  
  //当たり判定の位置を変える
  xhazime = 50 + int(yoko)*300;
  xowari  = 200+ int(yoko)*300;
  yhazime = 135+ int(tate)*200;
  yowari  = 220+ int(tate)*200;

}}}
//関数　クリックしたとき文字を表示
void mouseHit(int a ){
if(a==1){
  println("いた ( >_< )");}
  else{
    println("えーん (p_q)");}
}
//関数　ひげを表示
void hige(float a,float b){
  for(int c = 0;c<=2;++c){
   line(150 + int(a)*300,210 + int(b)*200,175 + int(a)*300,(200 + c*10) + int(b)*200);
   line(150 + int(a)*300,210 + int(b)*200,125 + int(a)*300,(200 + c*10) + int(b)*200);


}}
//関数　台を表示
void dai(){
   for(int x = 0;x <3;x++){
  fill(255);
  rect(50+x*300,200,200,20);
  rect(50+x*300,400,200,20);}}


  
