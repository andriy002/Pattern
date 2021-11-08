import 'Proxy.dart';

void main() {
  Video video = ProxyVideo('http://filmix.ua');
  video.showVideo();
  video.showVideo();
  video.showVideo();
}
