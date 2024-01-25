import 'dart:ui';
import 'package:flutter/material.dart';

class SrollPage extends StatelessWidget {
  final Image image;
  const SrollPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      child: SizedBox(
        
       
        child: ClipRRect(
          
          borderRadius: BorderRadius.circular(10),
          child: Container(
            
            color: Colors.transparent,
            child: Stack(children: [
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
              ),
    
              Container(
            width: 140,
            height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white.withOpacity(0.1)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.10),
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.10),
                      ]),
                ),
                child: image,
              ),
              
            ],
            
            ),
            
          ),
        ),
      ),
    );
  }
}
