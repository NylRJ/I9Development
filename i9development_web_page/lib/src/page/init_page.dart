import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../compoments/header.dart';

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
                        height: 600,
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
                                          style:TextButton.styleFrom(
                                            backgroundColor: Colors.black87,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                          ) ,
                                          onPressed: () {},
                                          child:  SizedBox(
                                            height: 45,
                                            width: 75,
                                            child: Center(
                                              child: Text(
                                                'Enviar',
                                                style: GoogleFonts.nunito(fontSize: 13,color: Colors.white),
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
