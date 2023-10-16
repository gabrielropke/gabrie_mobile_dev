import 'package:flutter/material.dart';
import 'package:site_portifolio/pages/page_two_view.dart';

// ignore: camel_case_types
class home_page_dark extends StatefulWidget {
  final bool idioma;
  const home_page_dark({super.key, required this.idioma});

  @override
  State<home_page_dark> createState() => _home_page_darkState();
}

// ignore: camel_case_types
class _home_page_darkState extends State<home_page_dark> {
  bool idioma = false;
  bool isHovered = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    idioma = widget.idioma;
  }

  @override
  void didUpdateWidget(covariant home_page_dark oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.idioma != oldWidget.idioma) {
      setState(() {
        idioma = widget
            .idioma; // Update the idioma variable when the parameter changes
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        // CONTAINER UTILIZADO COMO BACKGROUND PARA ATENDER O LINEAR GRADIENT
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xFF0F0E1A),
                Color.fromARGB(255, 26, 25, 39),
                Color(0xFF08070B),
              ], // Substitua essas cores pelas que você deseja
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )),

            // A CONSTRUÇÃO DOS WIDGETS DA TELA INICIAM AQUI
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: idioma ? 450 : 520,
                          child: Image.asset(
                            idioma
                                ? 'assets/texto_dark.png'
                                : 'assets/texto_dark_br.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 40),
                        MouseRegion(
                          onEnter: (_) {
                            setState(() {
                              isHovered = true;
                            });
                          },
                          onExit: (_) {
                            setState(() {
                              isHovered = false;
                            });
                          },
                          child: GestureDetector(
                            onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const page_two_view()));
                          },
                            child: Container(
                              width: 250,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.transparent,
                                  border:
                                      Border.all(width: 2, color: Colors.white)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      idioma
                                          ? 'View experience'
                                          : 'Ver experiência',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      curve: Curves.easeOutBack,
                                      width: isHovered
                                          ? 49
                                          : 47, // Increase width on hover
                                      height: isHovered
                                          ? 49
                                          : 47, // Increase height on hover
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: isHovered
                                            ? Colors.white
                                            : Colors.transparent,
                                        border: Border.all(
                                            width: 2, color: Colors.white),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          isHovered
                                              ? Icons.arrow_forward_rounded
                                              : Icons
                                                  .keyboard_arrow_right_rounded,
                                          color: isHovered
                                              ? Colors.black
                                              : Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Image.asset(
                              'assets/flutter_logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 90,
                            child: Image.asset(
                              'assets/dart_logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Image.asset(
                              'assets/javascript_logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 90,
                            child: Image.asset(
                              'assets/node_logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Image.asset(
                              'assets/css_logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 90,
                            child: Image.asset(
                              'assets/html_logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Image.asset(
                              'assets/firebase_logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                    ],
                  ),
                ],
              ),
            )));
  }
}
