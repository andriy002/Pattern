abstract class Video {
  void showVideo();
}

class RealVideo implements Video {
  String _url;
  RealVideo(this._url) {
    load();
  }

  void load() => print('load video from $_url');
  @override
  void showVideo() => print('video play....');
}

class ProxyVideo implements Video {
  String _url;
  RealVideo? _realVideo;

  ProxyVideo(this._url);
  @override
  void showVideo() {
    _realVideo ??= _realVideo = RealVideo(_url);
    _realVideo?.showVideo();
  }
}
