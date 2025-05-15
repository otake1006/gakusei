import controlP5.*; 
ControlP5 cp5; 
Textfield x;
Textfield y;
DropdownList zukei; 
Button osu; 
String[] items = {"円", "正方形"};
void setup() {
  size(600, 500);
  cp5 = new ControlP5(this); // ControlP5オブジェクトを生成
  stroke(1);
  fill(255);

  x = cp5.addTextfield("x"); // Textfieldオブジェクトを生成
  x.setPosition(10, 400); // 位置設定
  x.setSize(100, 30); // サイズ設定
  x.setFont(createFont("ＭＳ ゴシック", 20)); // フォント設定
  x.setLabel("x座標"); // テキストフィールド下に表示する文字列の設定
  x.setColorCaptionLabel(#000000); // テキストフィールド下に表示する文字色の設定
  x.setColor(#000000); // テキストフィールド上の文字色の設定
  x.setColorBackground(#ffffff); // テキストフィールドの背景色の設定

  y = cp5.addTextfield("y"); // Textfieldオブジェクトを生成
  y.setPosition(150, 400); // 位置設定
  y.setSize(100, 30); // サイズ設定
  y.setFont(createFont("ＭＳ ゴシック", 20)); // フォント設定
  y.setLabel("y座標"); // テキストフィールド下に表示する文字列の設定
  y.setColorCaptionLabel(#000000); // テキストフィールド下に表示する文字色の設定
  y.setColor(#000000); // テキストフィールド上の文字色の設定
  y.setColorBackground(#ffffff); // テキストフィールドの背景色の設定

  zukei = cp5.addDropdownList("zukei"); // DropdownListオブジェクトを生成
  zukei.setPosition(280, 400); // 位置設定
  zukei.setSize(120, 200); // サイズ設定
  zukei.setBarHeight(35); // 最上部の高さ設定
  zukei.setItemHeight(35); // 項目表示部の高さ設定
  zukei.setFont(createFont("ＭＳ ゴシック", 20)); // フォントの設定
  zukei.setLabel("図形を選択"); // 最上部の文字を設定
  zukei.setColorCaptionLabel(#000000); // 最上部の文字色を設定
  zukei.setColorValue(#000000); // 項目の文字色を設定
  zukei.setColorBackground(#FFFFFF); // 背景色の設定
  zukei.addItems(items); // 項目を設定
  zukei.setValue(-1); // 初期値を設定
  zukei.close(); // 閉じた状態でスタート

  osu = cp5.addButton("osu");// Buttonオブジェクトを生成
  osu.setPosition(420, 400); // 位置設定
  osu.setSize(100, 30); // サイズ設定
  osu.setFont(createFont("ＭＳ ゴシック", 20)); // フォントの設定
  osu.setLabel("図形を消去"); // ボタン上に表示する文字列の設定
  osu.setColorCaptionLabel(#000000); // ボタン上の文字色の設定
  osu.setColorBackground(#dddddd); // ボタンの色の設定
}

void draw() {
  
    
}

void osu() {
  x.clear();
  y.clear();
  background(204);

}

void zukei() {
  background(204);
  int xz=0;
  int yz=0;
  int value = int(zukei.getValue());
  xz=Integer.parseInt(x.getText());
  yz=Integer.parseInt(y.getText());
    
   
    if (value == 0) {
     
      ellipseMode( CENTER );
      ellipse(xz, yz, 100, 100);
    } else if (value == 1) {
      
      rectMode( CENTER );
      rect(xz, yz, 100, 100);
    }
  
}
