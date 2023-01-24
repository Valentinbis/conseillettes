import 'package:conseillettes/themes/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 2, top: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor1,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 112, 112, 112)),
                  image: DecorationImage(
                    image: AssetImage("assets/logo/profile.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: kDefaultPadding * 0.4),
                child: Column(children: <Widget>[
                  Text(
                    'Vasseur',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Auriane',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Spécialité',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  )
                ]),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 2, top: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor1,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 112, 112, 112)),
                  image: DecorationImage(
                    image: AssetImage("assets/logo/profile.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: kDefaultPadding * 0.4),
                child: Column(children: <Widget>[
                  Text(
                    'Bissay',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Valentin',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Spécialité',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  )
                ]),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 2, top: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor1,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 112, 112, 112)),
                  image: DecorationImage(
                    image: AssetImage("assets/logo/profile.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: kDefaultPadding * 0.4),
                child: Column(children: <Widget>[
                  Text(
                    'Nom',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Prénom',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Spécialité',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  )
                ]),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 2, top: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor1,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 112, 112, 112)),
                  image: DecorationImage(
                    image: AssetImage("assets/logo/profile.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: kDefaultPadding * 0.4),
                child: Column(children: <Widget>[
                  Text(
                    'Nom',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Prénom',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Spécialité',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  )
                ]),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 2, top: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor1,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 112, 112, 112)),
                  image: DecorationImage(
                    image: AssetImage("assets/logo/profile.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: kDefaultPadding * 0.4),
                child: Column(children: <Widget>[
                  Text(
                    'Nom',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Prénom',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Spécialité',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  )
                ]),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 2, top: 10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: kPrimaryColor1,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 112, 112, 112)),
                  image: DecorationImage(
                    image: AssetImage("assets/logo/profile.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: kDefaultPadding * 0.4),
                child: Column(children: <Widget>[
                  Text(
                    'Nom',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Prénom',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  ),
                  Text(
                    'Spécialité',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor1, fontSize: 10.0),
                  )
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
