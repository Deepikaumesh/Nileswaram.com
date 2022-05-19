import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/view_more.dart';

import '../Display Catagory/Grocery_display.dart';
import '../Display Catagory/HotelDisplay.dart';
import '../Display Catagory/Textlie_display.dart';
import '../Display_Sub_catagory/Hotel_Sub_Catagory_Display.dart';
import '../Display_Sub_catagory/Textile_Sub_Catagory_Display.dart';
import 'Display Catagory/news_Display.dart';

class News extends StatefulWidget {
  @override
  NewsState createState() => new NewsState();
}

class NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      decoration: BoxDecoration(
        //  color: Color(0xfffad4d4),
          color: Colors.white30,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          )
      ),
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height/3.8,
      width: MediaQuery.of(context).size.width/1.1,
      // height: 200,
      // width: 340,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TextButton(onPressed: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => News_Display()));
            // }, child: Padding(padding: EdgeInsets.only(left: 150),
            //     // child: Text("View More>>",style:GoogleFonts.quicksand(color: Colors.blue,fontWeight: FontWeight.bold),
            //     // )
            // )),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("കേരളത്തിലെ പ്രധാന നഗരങ്ങളിൽ ഒന്നായ നീലേശ്വരം കാസർഗോഡ് ജില്ലയിൽ സ്ഥിതി ചെയ്യുന്നു."
                  " കലാ സാംസ്കാരിക രംഗങ്ങളിൽ ഏറെ മുൻപന്തിയിലായതിനാൽ ഉത്തര മലബാറിന്റെ സാംസ്കാരിക തലസ്ഥാനം "
                  "എന്നാണ് നീലേശ്വരം അറിയപ്പെടുന്നത്. കോലത്തിരി രാജകുടുംബത്തിലെ നീലേശ്വര രാജാക്കന്മാരുടെ"
                  " ആസ്ഥാനമായിരുന്നു നീലേശ്വരം. നീലകണ്‌ഠേശ്വരം ലോപിച്ചാണ് നീലേശ്വരം എന്ന പേരു വന്നതെന്നാണ് "
                  "പറയപ്പെടുന്നത്. നീലേശ്വരത്ത് ശിവ പ്രതിഷ്‌ഠ നടത്തിയ നീലമഹർഷിയുടെ പേരിൽ നിന്നാണ് നീലേശ്വരം"
                  " ഉണ്ടായതെന്ന വാദം കൂടി നിലവിലുണ്ട്. കായലും, കടലും, മലയും, വയലും കൊണ്ട് സമ്പന്നമാണ് നീലേശ്വരം."
                  " മലബാറിലെ പ്രധാന ടൂറിസ്റ്റ്‌ കേന്ദ്രങ്ങളായ കോട്ടപ്പുറം ഹൗസ്‌ബോട്ട്‌ ടെർമിനലും, അഴിത്തലയും ഓർച്ച ബോട്ടിങ് "
                  "എന്നിവ നീലേശ്വരത്താണ് സ്ഥിതിചെയ്യുന്നത്. ആനച്ചാൽ ജുമാ മസ്ജിദ്, നീലേശ്വരം ടൗൺ ജുമാമസ്ജിദ്,ഓർച്ച ജുമാ"
                  " മസ്ജിദ് തളിയിൽ ശിവ ക്ഷത്രം മന്ദംപുറത്ത് കാവ് എന്നിവയാണ് പ്രധാന ആരാധനാലയങ്ങൾ. നീലേശ്വരം കൊട്ടാരം "
                  "ഇന്ന് പുരാവസ്തു വകുപ്പിന്റെ തനതുകലാ കേന്ദ്രമായി പ്രവർത്തിക്കുന്നു. മലബാറിലെ പ്രധാന നഗരസഭകളിൽ ഒന്നാണ്"
                  " നീലേശ്വരം. ചെറുവത്തൂർ, മടിക്കൈ, കിനാനൂർ കരിന്തളം, കയ്യൂർ ചീമേനി, വെസ്റ്റ് എളേരി, ഈസ്റ്റ് എളേരി, ബളാൽ "
                  "തുടങ്ങിയ ഗ്രാമങ്ങൾ നീലേശ്വരത്തിന് സമീപത്താണ് സ്ഥിതിചെയ്യുന്നത്.",textAlign: TextAlign.justify,),
            ),

          ],
        ),
      ),
    );
  }
}