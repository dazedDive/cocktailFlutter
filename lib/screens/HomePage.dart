import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(image: AssetImage('assets/Lime.png'),
                width: 100,
                alignment: Alignment.center,),
                const SizedBox(height: 40),
                RichText(text: TextSpan(
                  style: const TextStyle(color: Colors.black,fontSize: 20),
                  text: 'Bienvenue sur CockTailLand !\n'.toUpperCase(),
                  children: [
                    TextSpan(
                      text: 'La commu mixologue'.toUpperCase(),
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize:25)
                    ),
                  ]
                )),
              const SizedBox(
                height: 60,
                ),
                Form(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      textAlign: TextAlign.left,
                      'Login'),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Entrez votre Email',
                        hintText: 'Ex: josh.cat@matou.fr',
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Entrez votre mot de passe',
                        hintText: 'Ex: ********',
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(onPressed: () => print('ok'),
                                  style: ButtonStyle(elevation: MaterialStateProperty.all(5),
                                  ),
                                  child: Text('go!'.toUpperCase())),
                  const SizedBox(height: 40),
                  const Image(image: AssetImage('assets/footer.jpg'))],))],
              ),
            ),
        ),
      ),
    );

  }
}