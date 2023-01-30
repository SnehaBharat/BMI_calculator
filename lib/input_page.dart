import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'resuable_card.dart';

const bottomConatinerheight = 60.0;
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);
const bottomContainerColor = Colors.pink;

enum Gender {
  male,
  female,
  other,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.other;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ResuableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ResuableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: ResuableCard(
            colour: activeCardColor,
            cardChild:
                IconContent(icon: FontAwesomeIcons.faceAngry, label: 'ANGLE'),
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ResuableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(
                      icon: FontAwesomeIcons.faceFlushed, label: 'PREETY'),
                ),
              ),
              Expanded(
                child: ResuableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.faceGrin,
                    label: 'WOMEN',
                  ),
                ),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomConatinerheight,
          ),
        ],
      ),
    );
  }
}
