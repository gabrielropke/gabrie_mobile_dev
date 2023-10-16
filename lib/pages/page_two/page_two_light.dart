import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class page_two_light extends StatefulWidget {
  final bool idioma;
  const page_two_light({super.key, required this.idioma});

  @override
  State<page_two_light> createState() => _page_two_lightState();
}

// ignore: camel_case_types
class _page_two_lightState extends State<page_two_light> {
  bool idioma = false;
  bool isHovered = false;
  bool isHoveredImagem = false;
  bool isHoveredFlutter = false;
  bool isHoveredNode = false;
  bool isHoveredHTML = false;
  bool isHoveredCSS = false;
  bool isHoveredFirebase = false;
  bool isHoveredScrum = false;
  bool isHoveredKanban = false;
  bool isHoveredSOLID = false;
  bool isHoveredPowerBI = false;
  bool isHoveredExcel = false;

  @override
  void initState() {
    super.initState();
    idioma = widget.idioma;
  }

  @override
  void didUpdateWidget(covariant page_two_light oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.idioma != oldWidget.idioma) {
      setState(() {
        idioma = widget.idioma;
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
                Color(0xFFFFFFFF),
                Color(0xFFE4E4E4),
                Color(0xFFE4E1FF),
              ], // Substitua essas cores pelas que você deseja
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )),

            // A CONSTRUÇÃO DOS WIDGETS DA TELA INICIAM AQUI
            child: SingleChildScrollView(
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
                          const SizedBox(height: 80),
                          Row(
                            children: [
                              MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    isHoveredImagem = true;
                                  });
                                },
                                onExit: (_) {
                                  setState(() {
                                    isHoveredImagem = false;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeOutBack,
                                  width: isHoveredImagem ? 200 : 150,
                                  height: isHoveredImagem ? 200 : 150,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color.fromARGB(255, 255, 115, 0),
                                        width: 2),
                                  ),
                                  child: ClipOval(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          'https://i.im.ge/2023/10/16/PHBieh.minha-foto-perfil.jpg',
                                      placeholder: (context, url) =>
                                          const CircularProgressIndicator(
                                        color: Colors.transparent,
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              SizedBox(
                                width: idioma ? 420 : 497,
                                child: Image.asset(idioma
                                    ? 'assets/texto_02_light.png'
                                    : 'assets/texto_02_light_br.png'),
                              )
                            ],
                          ),
                          const SizedBox(height: 30),
                          // SizedBox(
                          //   width: 600,
                          //   child: Image.asset('assets/03_dark.png'),
                          // ),
                          SizedBox(
                            width: 700,
                            child: Text(
                              idioma
                                  ? 'I am a dedicated developer, focused on writing clean, readable, and modular code to ensure the quality and stability of the applications I develop. My approach includes careful planning, solid design, and testing. I have significant experience in developing a multifunctional application using Flutter. This app integrates essential features such as Firebase authentication, social media integration, in-app chat, in-app purchasing, and more. Additionally, I implemented an email sending system using Node.js, ensuring a complete user experience. My approach is based on clean code practices and a well-structured architecture, prioritizing modularization to ease code maintenance and scalability. I have experience in effectively utilizing project management methodologies such as Scrum and Kanban. Following SOLID principles, I continuously seek to improve my skills and knowledge.'
                                  : 'Sou um desenvolvedor comprometido, focado em escrever código limpo, legível e modular para garantir a qualidade e estabilidade dos aplicativos que desenvolvo. Minha abordagem inclui um planejamento cuidadoso, design sólido e testes. Tenho experiência significativa no desenvolvimento de um aplicativo multifuncional utilizando o Flutter. Esse aplicativo integra recursos essenciais, como autenticação Firebase, integração de redes sociais, chat interno, funcionalidade de compras no app e muito mais. Além disso, implementei um sistema de envio de e-mails usando Node.js, garantindo uma experiência completa aos usuários. Minha abordagem se baseia em práticas de código limpo e uma arquitetura bem estruturada, priorizando a modularização para facilitar a manutenção e escalabilidade do código. Tenho experiência com o uso eficaz de metodologias de gerenciamento de projetos como Scrum e Kanban. Seguindo os princípios SOLID, busco constantemente aprimorar minhas habilidades e conhecimentos.',
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 46, 43, 43), fontSize: 18),
                              textAlign: TextAlign.justify,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, right: 100),
                      child: SizedBox(
                        width: 400,
                        height: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                                  showDialog(
                                      context: context,
                                      builder: (context) => custodialogs());
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeOutBack,
                                  width: isHovered
                                      ? 270
                                      : 245, // Increase width on hover
                                  height: isHovered ? 55 : 55,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      gradient: const LinearGradient(colors: [
                                        Color(0xFFF0A93E),
                                        Color(0xFFE88565),
                                      ])),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 55),
                                        child: Text(
                                          idioma ? 'Contact' : 'Contato',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 26,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 200),
                                          curve: Curves.easeOutBack,
                                          width: isHovered
                                              ? 49
                                              : 47, // Increase width on hover
                                          height: isHovered
                                              ? 49
                                              : 47, // Increase height on hover
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: isHovered
                                                ? Colors.white
                                                : Colors.transparent,
                                            border: Border.all(
                                                width: 2, color: Colors.white),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              isHovered
                                                  ? Icons.send_rounded
                                                  : Icons.send_rounded,
                                              color: isHovered
                                                  ? Colors.orange
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
                            const SizedBox(height: 70),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHoveredFlutter = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHoveredFlutter = false;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            isHoveredFlutter
                                                ? Icons.arrow_forward_rounded
                                                : Icons
                                                    .keyboard_arrow_right_rounded,
                                            color: const Color.fromARGB(255, 255, 115, 0),
                                            size: 32,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'Flutter',
                                            style: TextStyle(
                                                color: Color.fromARGB(255, 46, 43, 43),
                                                fontSize: 26),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHoveredNode = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHoveredNode = false;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            isHoveredNode
                                                ? Icons.arrow_forward_rounded
                                                : Icons
                                                    .keyboard_arrow_right_rounded,
                                            color: const Color.fromARGB(255, 255, 115, 0),
                                            size: 32,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'Node.js',
                                            style: TextStyle(
                                                color: Color.fromARGB(255, 46, 43, 43),
                                                fontSize: 26),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHoveredHTML = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHoveredHTML = false;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            isHoveredHTML
                                                ? Icons.arrow_forward_rounded
                                                : Icons
                                                    .keyboard_arrow_right_rounded,
                                            color: const Color.fromARGB(255, 255, 115, 0),
                                            size: 32,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'HTML',
                                            style: TextStyle(
                                                color: Color.fromARGB(255, 46, 43, 43),
                                                fontSize: 26),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHoveredCSS = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHoveredCSS = false;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            isHoveredCSS
                                                ? Icons.arrow_forward_rounded
                                                : Icons
                                                    .keyboard_arrow_right_rounded,
                                            color: const Color.fromARGB(255, 255, 115, 0),
                                            size: 32,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'CSS',
                                            style: TextStyle(
                                                color: Color.fromARGB(255, 46, 43, 43),
                                                fontSize: 26),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHoveredFirebase = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHoveredFirebase = false;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            isHoveredFirebase
                                                ? Icons.arrow_forward_rounded
                                                : Icons
                                                    .keyboard_arrow_right_rounded,
                                            color: const Color.fromARGB(255, 255, 115, 0),
                                            size: 32,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'Firebase',
                                            style: TextStyle(
                                                color: Color.fromARGB(255, 46, 43, 43),
                                                fontSize: 26),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 100),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHoveredScrum = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHoveredScrum = false;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            isHoveredScrum
                                                ? Icons.arrow_forward_rounded
                                                : Icons
                                                    .keyboard_arrow_right_rounded,
                                            color: const Color.fromARGB(255, 255, 115, 0),
                                            size: 32,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'Scrum',
                                            style: TextStyle(
                                                color: Color.fromARGB(255, 46, 43, 43),
                                                fontSize: 26),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHoveredKanban = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHoveredKanban = false;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            isHoveredKanban
                                                ? Icons.arrow_forward_rounded
                                                : Icons
                                                    .keyboard_arrow_right_rounded,
                                            color: const Color.fromARGB(255, 255, 115, 0),
                                            size: 32,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'Kanban',
                                            style: TextStyle(
                                                color: Color.fromARGB(255, 46, 43, 43),
                                                fontSize: 26),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHoveredSOLID = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHoveredSOLID = false;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            isHoveredSOLID
                                                ? Icons.arrow_forward_rounded
                                                : Icons
                                                    .keyboard_arrow_right_rounded,
                                            color: const Color.fromARGB(255, 255, 115, 0),
                                            size: 32,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'SOLID',
                                            style: TextStyle(
                                                color: Color.fromARGB(255, 46, 43, 43),
                                                fontSize: 26),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    MouseRegion(
                                      onEnter: (_) {
                                        setState(() {
                                          isHoveredPowerBI = true;
                                        });
                                      },
                                      onExit: (_) {
                                        setState(() {
                                          isHoveredPowerBI = false;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Icon(
                                            isHoveredPowerBI
                                                ? Icons.arrow_forward_rounded
                                                : Icons
                                                    .keyboard_arrow_right_rounded,
                                            color: const Color.fromARGB(255, 255, 115, 0),
                                            size: 32,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'Power BI',
                                            style: TextStyle(
                                                color: Color.fromARGB(255, 46, 43, 43),
                                                fontSize: 26),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 50),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}

class custodialogs extends StatefulWidget {
  const custodialogs({super.key});

  @override
  State<custodialogs> createState() => _custodialogsState();
}

class _custodialogsState extends State<custodialogs> {
  bool isHoveredLinkedIn = false;
  bool isHoveredemail = false;
  bool isHoveredinstagram = false;

  final Uri _urlLinkedin =
      Uri.parse('https://www.linkedin.com/in/gabriel-ropke-6b8a8a247/');
  final Uri _urlInstagram =
      Uri.parse('https://www.instagram.com/gabriel_ropke/');

  Future<void> abrirLinkedin() async {
    if (!await launchUrl(_urlLinkedin)) {
      throw Exception('Could not launch $_urlLinkedin');
    }
  }

  Future<void> abrirInstagram() async {
    if (!await launchUrl(_urlInstagram)) {
      throw Exception('Could not launch $_urlInstagram');
    }
  }

  void abrirGmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'ropke2020@gmail.com',
    );
    String url = params.toString();
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  isHoveredLinkedIn = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isHoveredLinkedIn = false;
                });
              },
              child: GestureDetector(
                onTap: () {
                  abrirLinkedin();
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutCirc,
                  width: isHoveredLinkedIn ? 55 : 50,
                  height: isHoveredLinkedIn ? 55 : 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    gradient: const LinearGradient(
                        colors: [Color(0xFF0173AF), Color(0xFF44B6E8)]),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Image.asset('assets/linkedIn_botao_dark.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  isHoveredemail = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isHoveredemail = false;
                });
              },
              child: GestureDetector(
                onTap: () {
                  abrirGmail();
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutCirc,
                  width: isHoveredemail ? 55 : 50,
                  height: isHoveredemail ? 55 : 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    gradient: const LinearGradient(
                        colors: [Color(0xFFFFCCCC), Color(0xFFFF6161)]),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Image.asset('assets/email_botao_dark.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  isHoveredinstagram = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isHoveredinstagram = false;
                });
              },
              child: GestureDetector(
                onTap: () {
                  abrirInstagram();
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOutCirc,
                  width: isHoveredinstagram ? 55 : 50,
                  height: isHoveredinstagram ? 55 : 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    gradient: const LinearGradient(
                        colors: [Color(0xFFF4A10C), Color(0xFFED143F), Color(0xFF9702D6)]),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Image.asset('assets/instagram_botao_dark.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
