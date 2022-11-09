import 'package:flutter/cupertino.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.secondarySystemFill,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: CupertinoColors.systemBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  CupertinoTextFormFieldRow(
                    prefix: const Center(child: Icon(CupertinoIcons.mail)),
                    placeholder: 'Email',
                    placeholderStyle: TextStyle(
                        color:
                            CupertinoColors.darkBackgroundGray.withOpacity(.7)),
                    keyboardType: TextInputType.emailAddress,
                    keyboardAppearance: Brightness.dark,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: CupertinoColors.separator))),
                  ),
                  CupertinoTextFormFieldRow(
                    prefix: const Center(child: Icon(CupertinoIcons.lock)),
                    obscureText: true,
                    placeholder: 'Password',
                    placeholderStyle: TextStyle(
                        color:
                            CupertinoColors.darkBackgroundGray.withOpacity(.7)),
                    keyboardType: TextInputType.emailAddress,
                    keyboardAppearance: Brightness.dark,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CupertinoButton.filled(
                    child: const FittedBox(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                    onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
