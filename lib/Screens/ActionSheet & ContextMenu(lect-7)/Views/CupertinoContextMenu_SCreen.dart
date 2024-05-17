import 'package:flutter/cupertino.dart';
import '../model/List.dart';

class ContextMenuScreen extends StatelessWidget {
  const ContextMenuScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text(
          'Gallery',
          style: TextStyle(fontSize: 25),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 25),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Container(
          //         alignment: Alignment.center,
          //         height: 35,
          //         width: 120,
          //         decoration: BoxDecoration(
          //           color: CupertinoColors.lightBackgroundGray.withOpacity(0.2),
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               'Albums',
          //               style: TextStyle(
          //                 color: CupertinoColors.activeBlue,
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w900,
          //                 letterSpacing: 1,
          //               ),
          //             ),
          //             SizedBox(width: 5),
          //             Icon(
          //               CupertinoIcons.chevron_down,
          //               color: CupertinoColors.activeBlue,
          //             ),
          //           ],
          //         ),
          //       ),
          //       Icon(
          //         CupertinoIcons.search,
          //         size: 28,
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(height: 15),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3 / 4,
              ),
              itemBuilder: (context, index) => GalleryGridViews(
                Gallery[index]['img'],
                Gallery[index]['name'],
                Gallery[index]['number'],
                context
              ),
              itemCount: Gallery.length,
            ),
          ),
        ],
      ),
    );



  }
  Widget GalleryGridViews(String img, String name, int number,BuildContext context) {
    return Column(
      children: [

        CupertinoContextMenu(
          actions: <Widget>[
            CupertinoContextMenuAction(
              onPressed: () {
                Navigator.pop(context);
              },
              isDefaultAction: true,
              trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
              child: const Text('Copy'),
            ),
            CupertinoContextMenuAction(
              onPressed: () {
                Navigator.pop(context);
              },
              trailingIcon: CupertinoIcons.share,
              child: const Text('Share'),
            ),
            CupertinoContextMenuAction(
              onPressed: () {
                Navigator.pop(context);
              },
              trailingIcon: CupertinoIcons.heart,
              child: const Text('Favorite'),
            ),
            CupertinoContextMenuAction(
              onPressed: () {
                Navigator.pop(context);
              },
              isDestructiveAction: true,
              trailingIcon: CupertinoIcons.delete,
              child: const Text('Delete'),
            ),
          ],
          child:  Container(
            margin: EdgeInsets.all(5),
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              // color: CupertinoColors.systemBlue,
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),





        Text(
          name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Text(
          '$number',
          style: TextStyle(
            color: CupertinoColors.systemGrey,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}





