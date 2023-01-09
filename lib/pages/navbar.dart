import 'package:flutter/material.dart';
import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';
import 'package:identifikasi_tanaman/pages/article_page.dart';
import 'package:identifikasi_tanaman/pages/camera_page.dart';
import 'package:identifikasi_tanaman/pages/gallery_page.dart';
import 'package:identifikasi_tanaman/pages/home_page.dart';
import 'package:identifikasi_tanaman/pages/scan_page.dart';
import 'package:image_picker/image_picker.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int pageIndex = 0;

  final HomePage _homePage = new HomePage();
  final CameraPage _cameraPage = new CameraPage();
  final ScanPage _scanPage = new ScanPage();
  final GalleryPage _galleryPage = new GalleryPage();
  final ArticlePage _articlePage = new ArticlePage();

  Widget _showPage = new HomePage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _cameraPage;
        break;
      case 2:
        return _scanPage;
        break;
      case 3:
        return _galleryPage;
        break;
      case 4:
        return _articlePage;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text(
              'Page Not Found',
              style: new TextStyle(fontSize: 40),
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: pageIndex,
        height: 76.0,
        items: [
          CurvedNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home"),
          CurvedNavigationBarItem(
              icon: Icon(Icons.camera, size: 30), label: "Camera"),
          CurvedNavigationBarItem(
              icon: Icon(Icons.place_rounded, size: 30), label: "Scan"),
          CurvedNavigationBarItem(
              icon: Icon(Icons.photo_album, size: 30), label: "Gallery"),
          CurvedNavigationBarItem(
              icon: Icon(Icons.article, size: 30), label: "Article"),
        ],
        color: Colors.green,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _pageChooser(tappedIndex);
          });
        },
        letIndexChange: (index) => true,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: _showPage,
        ),
      ),
    );
  }
}
