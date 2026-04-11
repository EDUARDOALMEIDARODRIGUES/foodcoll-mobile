import 'package:flutter/material.dart';
import 'package:foodcoll_app/shared/widgets/page_header.dart';
import '../../../../core/base_page.dart';


class CollocationsPage extends StatelessWidget {
  const CollocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Colocações',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: PageHeader(title: "Configurações", onBack: () => true),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.star_border, color: Color(0xFF1FA7A6)),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.volume_up, color: Color(0xFF1FA7A6)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start, spacing: 12, children: [Text("/'Pronuncia/",style: TextStyle(fontSize: 16,color: Color(0xFF4A4F55))), Text("Tradução",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 0, 0, 0)))]),
          ),
          Column(
            spacing: 12,
            children: [
              Text("Exemplo(s) de uso",style: TextStyle(fontSize: 18,color: Color(0xFF4A4F55),fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                   color: Color(0xFFA8D5D4)
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent interdum malesuada viverra. Nunc et ipsum vel velit scelerisque tincidunt sit amet ac velit.", style: TextStyle(fontSize: 16,color: Color(0xFF4A4F55)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFE9EEF0),
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent interdum malesuada viverra. Nunc et ipsum vel velit scelerisque tincidunt sit amet ac velit.",style: TextStyle(fontSize: 16,color: Color(0xFF4A4F55))
                ),
              ),
              ListTile(
            title: Text("Saber mais",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            trailing: DropdownButton(items: [],icon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xFF000000)), underline: SizedBox(),onChanged: (values) {}),
          ),
            ],
          ),
        ],
      ),
    );
  }
}
