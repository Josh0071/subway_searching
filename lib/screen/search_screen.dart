import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_searching_app/data/api.dart';
import 'package:image_searching_app/model/real_time_arrival_list.dart';
import 'package:image_searching_app/widget/image_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _formkey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  final _api = SubwayApi();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('지하철 실시간 정보'),
      ),
      body: SafeArea (maintainBottomViewPadding: true,
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: _controller,
                          validator: (value) {
                            if (value!.trim().isEmpty) {
                              return '올바른 검색어를 입력하세요.';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            labelText: '역 이름음 검색 해주세요',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(const SnackBar(content: Text('error')));
                    }
                    setState(() {});
                    FocusScope.of(context).unfocus();
                  },
                  child: const Text('조회'),
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            const Center(
              child: Text(
                '도착 정보',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            FutureBuilder<List<RealtimeArrivalList>?>(
              future: _api
                  .getImages(_controller.text.isEmpty ? '서울' : _controller.text),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  Column(
                    children: const [
                      SizedBox(
                        height: 250,
                      ),
                      Center(
                          child: Align(
                              alignment: Alignment.center,
                              child: CircularProgressIndicator())),
                    ],
                  );
                }
                if (!snapshot.hasData) {
                  return const Center(child: Text('역 이름을 올바르게 입력하세요.'));
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Column(
                    children: const [
                      SizedBox(
                        height: 250,
                      ),
                      Center(
                          child: Align(
                              alignment: Alignment.center,
                              child: CircularProgressIndicator())),
                    ],
                  );
                }

                final result = snapshot.data!;
                return ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: result.map((e) => ImageItem(data: e)).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
