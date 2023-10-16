import 'package:flutter/material.dart';
import 'package:site_portifolio/pages/page_two/page_two_dark.dart';
import 'package:site_portifolio/pages/page_two/page_two_light.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class page_two_view extends StatefulWidget {
  const page_two_view({super.key});

  @override
  State<page_two_view> createState() => _page_two_viewState();
}

// ignore: camel_case_types
class _page_two_viewState extends State<page_two_view> {
  var darkmode = true;
  var idioma = true;
  bool isHoveredLinkedin = false;
  bool isHoveredGithub = false;
  bool isHoveredDarkmode = false;
  bool isHoveredIdiomas = false;

  final Uri _urlLinkedin =
      Uri.parse('https://www.linkedin.com/in/gabriel-ropke-6b8a8a247/');
  final Uri _urlGithub = Uri.parse('https://github.com/gabrielropke');
  final Uri _urlInstagram =
      Uri.parse('https://www.instagram.com/gabriel_ropke/');

  void alteraModo() {
    setState(() {
      darkmode = !darkmode;
    });
    print(darkmode ? 'Dark' : 'Light');
  }

  Future<void> abrirLinkedin() async {
    if (!await launchUrl(_urlLinkedin)) {
      throw Exception('Could not launch $_urlLinkedin');
    }
  }

  Future<void> abrirGithub() async {
    if (!await launchUrl(_urlGithub)) {
      throw Exception('Could not launch $_urlGithub');
    }
  }

  Future<void> abrirInstagram() async {
    if (!await launchUrl(_urlInstagram)) {
      throw Exception('Could not launch $_urlInstagram');
    }
  }

  List<String> listaIdiomas = [
    'en-us',
    'pt-br',
  ];

  Map<String, String> imagensIdioma = {
    'en-us': 'assets/bandeira_eua.png',
    'pt-br': 'assets/bandeira_brasil.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 90,
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                    curve: Curves.easeOutBack,
                    width: isHoveredIdiomas ? 45 : 35,
                    height: isHoveredIdiomas ? 35 : 25,
                  child: SizedBox(
                      child: Image.asset(
                       idioma ? 'assets/bandeira_eua.png' : 'assets/bandeira_brasil.png',
                        fit: BoxFit.cover,
                      )),
                ),
                const SizedBox(width: 5),
                MouseRegion(
                  onEnter: (_) {
                      setState(() {
                        isHoveredIdiomas = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHoveredIdiomas = false;
                      });
                    },
                  child: PopupMenuButton<String>(
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: darkmode ? Colors.white : Colors.black,
                    ),
                    onSelected: (selectedLanguage) {
                      setState(() {
                        idioma = selectedLanguage == 'en-us';
                        print(idioma);
                      });
                    },
                    itemBuilder: (BuildContext context) {
                      return listaIdiomas.map((String language) {
                        return PopupMenuItem<String>(
                          value: language,
                          child: Row(
                            children: [
                              Image.asset(
                                imagensIdioma[language] ??
                                    'assets/bandeira_en_us_02.jpg',
                                width: 24,
                                height: 24,
                              ),
                              const SizedBox(width: 8),
                              Text(language),
                            ],
                          ),
                        );
                      }).toList();
                    },
                  ),
                )
              ],
            ),
          ),
          actions: [
            Row(
              children: [
                GestureDetector(
                  onTap: alteraModo,
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHoveredDarkmode = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHoveredDarkmode = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeOutBack,
                      width: isHoveredDarkmode ? 90 : 80,
                      height: isHoveredDarkmode ? 55 : 45,
                      child: Container(
                        decoration: darkmode
                            ? BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                border: Border.all(width: 2, color: Colors.white),
                                gradient: const LinearGradient(
                                    colors: [Color(0xFF08000C), Color(0xFF2C272F)],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight))
                            : BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                border: Border.all(width: 2, color: Colors.white),
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFFFC000),
                                      Color(0xFFFF9951),
                                      Color(0xFFF895C7),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: ClipRRect(
                            child: AnimatedPadding(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                              padding: darkmode
                                  ? const EdgeInsets.only(left: 35)
                                  : const EdgeInsets.only(right: 35),
                              child: Container(
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.white),
                                child: darkmode
                                    ? const Icon(Icons.nights_stay_outlined,
                                        color: Colors.black)
                                    : const Icon(Icons.wb_sunny_outlined,
                                        color: Color(0xFFFF9951)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                GestureDetector(
                  onTap: abrirLinkedin,
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHoveredLinkedin = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHoveredLinkedin = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeOutBack,
                      width: isHoveredLinkedin ? 50 : 40,
                      height: isHoveredLinkedin ? 50 : 40,
                      child: darkmode
                          ? Image.asset(
                              'assets/linkedin_logo_dark02.png',
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'assets/linkedin_logo_light02.png',
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: abrirGithub,
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHoveredGithub = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHoveredGithub = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeOutBack,
                      width: isHoveredGithub ? 50 : 40,
                      height: isHoveredGithub ? 50 : 40,
                      child: darkmode
                          ? Image.asset(
                              'assets/github_02.png',
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'assets/github_logo_light02.png',
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
                const SizedBox(width: 80),
              ],
            )
          ],
        ),
        // PAGINA UTILIZADA COMO BODY PARA ATENDER A ALTERAÇÃO DE TEMAS
        body: darkmode
            ? page_two_dark(
                idioma: idioma,
              )
            : page_two_light(
                idioma: idioma,
              ));
  }
}
