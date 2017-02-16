*{
  margin: 0;
  padding: 0;
  bottom: 0;
}
.box {
  width: 100%;
  height: 60vh;
        border-radius: 12px;
}
.glide {
  margin-top: 15vh;
}
.glide__wrapper {
  padding: 32px 0;
}
.glide__bullets {
  bottom: 54px;
}
.glide__slide {
  -webkit-transition: all 200ms ease;
  transition: all 200ms ease;
  -webkit-transform-origin: 50% 50%;
  transform-origin: 50% 50%;
}
.glide__slide.active {
  -webkit-transform: scale(1.02);
  transform: scale(1.02);
}
.glide__slide.pre {
  -webkit-transform: perspective(50em) rotateY(15deg);
  transform: perspective(50em) rotateY(15deg);
}
.glide__slide.following {
  -webkit-transform: perspective(50em) rotateY(-15deg);
  transform: perspective(50em) rotateY(-15deg);
}
