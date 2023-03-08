import 'package:flutter/material.dart';

class Webtoon extends StatelessWidget {
  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,

  });

  final String title, thumb, id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Column(
        children: [
          Container(
            width: 250,
            //clipBehavior : 자식의 부모 영역 침범을 제어함
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: Offset(10,10),
                    color: Colors.black.withOpacity(0.5),

                  )
                ]
            ),
            child: Image.network(
              thumb,
              headers: const {
                "User-Agent":
                "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),),
        ],
      ),
    );
  }
}

