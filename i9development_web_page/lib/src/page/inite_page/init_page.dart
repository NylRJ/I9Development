import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../compoments/header.dart';
import 'cpmpoments/profile_image.dart';
import 'cpmpoments/profile_tile.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.45,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi / 6)
                                ..translate(-180, 170),
                              child: Container(
                                height: 350,
                                width: 700,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(300),
                                ),
                              ),
                            ),
                            //text and email
                            Positioned(
                              top: 200,
                              left: 100,
                              child: SizedBox(
                                height: 400,
                                width: 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Gerenciar todos os seus',
                                      style: GoogleFonts.nunito(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'projetos em um só lugar.',
                                      style: GoogleFonts.nunito(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 300,
                                      child: Text(
                                        'Descreva seu projeto e encontre uma equipe de talentos ao redor do mundo ou perto de você. Deixe seu e-mail para contato  e receba uma Constoria Grátis.',
                                        style: GoogleFonts.nunito(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    //Campo de E-mail
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 45,
                                          width: 230,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Seu endereço de E-mail',
                                              hintStyle: GoogleFonts.nunito(
                                                fontSize: 12,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Colors.black87,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: SizedBox(
                                            height: 45,
                                            width: 75,
                                            child: Center(
                                              child: Text(
                                                'Enviar',
                                                style: GoogleFonts.nunito(
                                                    fontSize: 13,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.55,
                        color: Colors.white,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: const [
                            //1 linha Avatar da Esquerda 
                            ProfileImage(
                              top: 100,
                              left: 40,
                              diameter: 260,
                              image: 'https://images.unsplash.com/photo-1629904853716-f0bc54eea481?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                            ),
                            //1 linha Avatar da Direita 
                            ProfileImage(
                              top: 70,
                              left: 300,
                              diameter: 210,
                              image: 'https://plus.unsplash.com/premium_photo-1661692004329-e4730aa4e235?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                            ),
                             //2 linha Avatar da Direita
                            ProfileImage(
                              top: 275,
                              left: 330,
                              diameter: 380,
                              image: 'assets/nyl.png',
                            ),
                            //2 linha Avatar da esquerda 
                            ProfileImage(
                              top: 415,
                              left: 5,
                              diameter: 280,
                              image: 'https://images.unsplash.com/photo-1557804506-669a67965ba0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
                            ),
                            //2º linha  1º Title da esqueda
                            ProfileTile(
                              top: 355,
                              left: 10,
                              title: 'Eu vou projetar a sua ideia e torná la real...',
                              subTitle: 'Acredite que é possível!',
                              factor: 1.1,
                              icons: Icons.mail_outline_rounded,

                            ),
                            //1º linha  1º Title da Esquerda 
                            ProfileTile(
                              top: 70,
                              left: -10,
                              title: 'Uma equipe cheia de experiência e ',
                              subTitle: 'pronta para te a tender.',
                              factor: 0.9,
                              icons: Icons.mail_outline_rounded,

                            ),
                            //1º linha  2º Title da direita
                            ProfileTile(
                              top: 65,
                              left: 460,
                              title: 'Transforme sua ideia em uma Startup,',
                              subTitle: 'você pode.',
                              factor: 1.2,
                              icons: Icons.mail_outline_rounded,

                            ),
                          
                            //2º linha  2º Title da direita
                            ProfileTile(
                              top: 240,
                              left: 480,
                              title: 'Eu vou projetar a sua ideia e torná la real',
                              subTitle: 'Moisés, Engenheiro da',
                              factor: 1.2,
                              icons: Icons.info_outline,

                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Header(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
