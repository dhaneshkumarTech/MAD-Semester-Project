import 'package:flutter/material.dart';

class PlanContaienr extends StatelessWidget {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final String tripName;
  final String image;
  final int saves;
  const PlanContaienr(
      {Key? key,
      required this.tripName,
      required this.image,
      required this.saves})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 30),
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.height),
                  );
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  image,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 20.0,
                right: 20.0,
                child: Container(
                  height: 35,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  decoration: BoxDecoration(
                    color: themeColor.withOpacity(0.7),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: const Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '$saves saved',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Text(
                  tripName,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: themeColor,
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                child: Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: Image.asset("assets/PlanPics/airplane.png"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
