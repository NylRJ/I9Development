import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff373e98),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const SizedBox(
            width: 100.0,
          ),
          const Icon(
            Icons.favorite_rounded,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Freelancer',
            style: GoogleFonts.nunito(
              color: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            width: 250,
          ),
            ],
          ),
          //Menu
          Row(
            
            children: const [
              HeaderNav(
                selected: true,
                text: 'Inicio',
              ),
              SizedBox(
                width: 40,
              ),
              HeaderNav(
                selected: false,
                text: 'Encontrar uma Equipe',
              ),
              SizedBox(
                width: 40,
              ),
              HeaderNav(
                selected: false,
                text: 'Solicitar um Projeto',
              ),
              SizedBox(
                width: 40,
              ),
              HeaderNav(
                selected: false,
                text: 'Sobre',
              ),
            ],
          ),
          const SizedBox(
            width: 250,
          ),
          //botão de login
          Row(
                children: [
                  Text(
                    'Inscrever-se',
                    style: GoogleFonts.nunito(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Conecte-se',
                    style: GoogleFonts.nunito(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
        ],
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  const HeaderNav({
    Key? key,
    required this.text,
    required this.selected,
  }) : super(key: key);
  final String text;
  final bool selected;

  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.nunito(
            fontSize: 13,
            color: Colors.white,
          ),
        ),
        widget.selected
            ? const SizedBox(
                height: 5,
              )
            : const SizedBox(),
        widget.selected
            ? const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 2,
              )
            : const SizedBox(),
      ],
    );
  }
}
