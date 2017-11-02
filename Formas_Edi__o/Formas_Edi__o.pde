import processing.video.*; 
Movie movie;

String[] videoList = {
"Cir-A1.mp4", "Cir-A2.mp4", "Cir-A3.mp4", "Cir-A4.mp4", 
"Cir-C1.mp4", "Cir-C2.mp4", "Cir-C3.mp4", "Cir-C4.mp4",
"Cir-D1.mp4", "Cir-D2.mp4", "Cir-D3.mp4", "Cir-D4.mp4",
"Qua-A1.mp4", "Qua-A2.mp4", "Qua-A3.mp4", "Qua-A4.mp4",
"Qua-B1.mp4", "Qua-B2.mp4", "Qua-B3.mp4", "Qua-B4.mp4",
"Qua-C1.mp4", "Qua-C2.mp4", "Qua-C3.mp4", "Qua-C4.mp4",
"Qua-D1.mp4", "Qua-D2.mp4", "Qua-D3.mp4", "Qua-D4.mp4",
"Tri-A1.mp4", "Tri-A2.mp4", "Tri-A3.mp4", "Tri-A4.mp4",
"Tri-B1.mp4", "Tri-B2.mp4", "Tri-B3.mp4", "Tri-B4.mp4",
"Tri-C1.mp4", "Tri-C2.mp4", "Tri-C3.mp4", "Tri-C4.mp4",
"Tri-D1.mp4", "Tri-D2.mp4", "Tri-D3.mp4", "Tri-D4.mp4"
};

String videoPath = "../../Renderizados/";

int counter = 0;

void setup() {
  size(1920,1080);
  
  String randomVideo = videoPath + videoList[int(random(20))];
  movie = new Movie(this,  randomVideo);
  movie.loop();

}

void movieEvent(Movie movie) {  
  movie.read();
}

void draw() {
  image(movie, 0, 0);
   
  if(counter % 20 == 0) {
    println(counter);
    String randomVideo = videoPath + videoList[int(random(20))];
    movie = new Movie(this,  randomVideo);
    movie.loop();
  }
  counter++;
}