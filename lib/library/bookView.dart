import 'package:arvore_app/library/book.dart';
import 'package:arvore_app/util/client_api.dart';
import 'package:arvore_app/util/constants.dart';
import 'package:arvore_app/util/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';


Map<int, Color> color =
{
  50:Color.fromRGBO(177,208,174, .1),
  100:Color.fromRGBO(177,208,174, .2),
  200:Color.fromRGBO(177,208,174, .3),
  300:Color.fromRGBO(177,208,174, .4),
  400:Color.fromRGBO(177,208,174, .5),
  500:Color.fromRGBO(177,208,174, .6),
  600:Color.fromRGBO(177,208,174, .7),
  700:Color.fromRGBO(177,208,174, .8),
  800:Color.fromRGBO(177,208,174, .9),
  900:Color.fromRGBO(177,208,174, 1),
};

MaterialColor colorCustom = MaterialColor(0xFFB1D0AE, color);

class BookViewWidget extends StatefulWidget {
  final List<String> imageUrls;
  final BorderRadius imageBorderRadius;
  final double imageHeight;

  const BookViewWidget({
    Key key,
    @required this.imageUrls,
    this.imageBorderRadius,
    this.imageHeight = 350.0,
  }) : super(key: key);

  @override
  BookViewWidgetState createState() {
    return new BookViewWidgetState();
  }
}
class BookViewWidgetState extends State<BookViewWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.of(context).labelTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F4E6),
        primarySwatch: colorCustom,
        bottomAppBarColor: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        home: _buildingImageSlider(),
    );
  }

  List<Widget> _pages = [];
  int page = 0;
  final _controller = PageController();
  @override
  void initState() {
     super.initState();
    _pages = widget.imageUrls.map((url) {
      return _buildImagePageItem(url);
    }).toList();
  }

  Widget _buildingImageSlider() {
    return Container(
      height: 350.0,
      padding: EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 4.0,
        child: Stack(
          children: [
            _buildPagerViewSlider(),
            _buildDotsIndicatorOverlay(),
          ],
        ),
      ),
    );
  }

  Widget _buildPagerViewSlider() {
    return Positioned.fill(
      child: PageView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        controller: _controller,
        itemCount: _pages.length,
        itemBuilder: (BuildContext context, int index) {
          return _pages[index % _pages.length];
        },
        onPageChanged: (int p) {
          setState(() {
            page = p;
          });
        },
      ),
    );
  }

  Positioned _buildDotsIndicatorOverlay() {
    return Positioned(
      bottom: 20.0,
      left: 0.0,
      right: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DotsIndicator(
          controller: _controller,
          itemCount: _pages.length,
          onPageSelected: (int page) {
            _controller.animateToPage(
              page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
        ),
      ),
    );
  }

  Widget _buildImagePageItem(String imgUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: CachedNetworkImage(
        imageUrl: imgUrl,
        placeholder: (context, url) => Center(
          child: Platform.isIOS
              ? CupertinoActivityIndicator()
              : CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) => Icon(Icons.error),
        fit: BoxFit.cover,
      ),
    );
  }

}




