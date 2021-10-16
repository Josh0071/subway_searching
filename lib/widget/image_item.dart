import 'package:flutter/material.dart';
import 'package:image_searching_app/model/real_time_arrival_list.dart';

class ImageItem extends StatelessWidget {
  final RealtimeArrivalList data;
  const ImageItem({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Image.asset('asset/a.png',
                width: 150,
                height: 120,),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  data.trainLineNm,
                  style: const TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  data.arvlMsg2,
                  style: const TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
