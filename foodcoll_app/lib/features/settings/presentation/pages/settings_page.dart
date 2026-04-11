import 'package:flutter/material.dart';
import 'package:foodcoll_app/shared/widgets/page_header.dart';
import '../../../../core/base_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      //tirei o const, tava dando erro no onBack
      title: 'Configurações',
      currentIndex: 3,
      body: Column(
        spacing: 30,
        children: [
          PageHeader(title: "Configurações", onBack: () => true),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SwitchListTile(
                secondary: Icon(Icons.dark_mode, color: Color(0xFF1FA7A6)),
                title: Center(child: Text("Modo Escuro")),
                value: false,
                onChanged: (bool value) => {},
                inactiveTrackColor: Color(0xFFA8D5D4),
                inactiveThumbColor: Color(0xFFFFFFFF),
                activeThumbColor: Color(0xFFFFFFFF),
                activeTrackColor: Color(0xFFA8D5D4),
                trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
              ),
              Divider(color: Color(0xFFA8D5D4), thickness: 2),
              ListTile(
                leading: Icon(Icons.format_size, color: Color(0xFF1FA7A6)),
                title: Center(child: Text("Tamanho da fonte")),
                trailing: DropdownButton<String>(
                  //Personalizar o dropdownbutton
                  icon: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Color(0xFFA8D5D4),
                  ),
                  hint: Text("p", style: TextStyle(color: Color(0xFFA8D5D4))),
                  underline: SizedBox(),
                  items: [],
                  onChanged: (value) {},
                ),
              ),
              Divider(color: Color(0xFFA8D5D4), thickness: 2),
              ListTile(
                leading: Icon(Icons.info, color: Color(0xFF1FA7A6)),
                title: Center(child: Text("Sobre o App")),
              ),
              Divider(color: Color(0xFFA8D5D4), thickness: 2),
              ListTile(
                leading: Icon(Icons.logout, color: Color(0xFF1FA7A6)),
                title: Center(child: Text("Sair")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
