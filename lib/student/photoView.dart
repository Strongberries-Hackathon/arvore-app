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

class PhotoViewWidget extends StatefulWidget {
  final String image;
  
  const PhotoViewWidget({
    Key key,
   this.image,
  }) : super(key: key);

  @override
  PhotoViewWidgetState createState() {
    return new PhotoViewWidgetState();
  }
}
class PhotoViewWidgetState extends State<PhotoViewWidget> {
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


  Widget _buildingImageSlider() {
    return Container(
      height: 350.0,
      padding: EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 4.0,
        child: Stack(
          children: [
            _buildImagePageItem(),
          ],
        ),
      ),
    );
  }

   Widget _buildImagePageItem() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: CachedNetworkImage(
        imageUrl: widget.image,
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




