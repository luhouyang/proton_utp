import 'package:flutter/material.dart';

class CarHistoryPage extends StatefulWidget {
  const CarHistoryPage({super.key});

  @override
  State<CarHistoryPage> createState() => _CarHistoryPageState();
}

class _CarHistoryPageState extends State<CarHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  clipBehavior: Clip.antiAlias,
                  child: const Image(
                    image: AssetImage('assets/protonx50_pic.png'),
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'PROTON X50',
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 48),
                    ),
                    const Text(
                      'City Drive | 2020',
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        const Text('75421 KM', style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.w500, fontSize: 20)),
                        const SizedBox(
                          width: 36,
                        ),
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(75), color: Colors.greenAccent),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Active',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Overview',
                  style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              Container(
                color: Colors.grey,
                width: 2,
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Specs',
                  style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              Container(
                color: Colors.grey,
                width: 2,
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Container(
                  decoration: const UnderlineTabIndicator(borderSide: BorderSide(color: Color.fromARGB(255, 25, 118, 210), width: 4)),
                  child: Text(
                    'Service History',
                    style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(75), border: Border.all(color: const Color.fromARGB(255, 183, 183, 183))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey[700],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'Search',
                      style: TextStyle(fontSize: 24, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 36,
              ),
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(75), border: Border.all(color: const Color.fromARGB(255, 183, 183, 183))),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Date Completed',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Work Order',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              SizedBox(
                width: 36,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Meter',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Service Task',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
            child: Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(75), color: Colors.green),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  '#94',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                const SizedBox(
                  width: 152,
                ),
                const Text(
                  '48,200 KM',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                const SizedBox(
                  width: 112,
                ),
                const SizedBox(
                  width: 240,
                  child: Text(
                    'Engine Oil & Filter Replacement',
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24, decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
            child: Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(75), color: Colors.green),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  '#95',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                const SizedBox(
                  width: 152,
                ),
                const Text(
                  '54,325 KM',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                const SizedBox(
                  width: 112,
                ),
                const SizedBox(
                  width: 240,
                  child: Text(
                    'Tire Rotation Tire Balance Air Filter Replacementt',
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24, decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
            child: Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(75), color: Colors.green),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  '#96',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                const SizedBox(
                  width: 152,
                ),
                const Text(
                  '60,175 KM',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                const SizedBox(
                  width: 112,
                ),
                const SizedBox(
                  width: 240,
                  child: Text(
                    'Transmission Fluid Tire Rotation',
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24, decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
            child: Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(75), color: Colors.green),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  '#97',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                const SizedBox(
                  width: 152,
                ),
                const Text(
                  '66,820 KM',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                const SizedBox(
                  width: 112,
                ),
                const SizedBox(
                  width: 240,
                  child: Text(
                    'Battery Replacement Air Filter Replacement Spark Plugs Replacement Transmission Fluid Drain',
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24, decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
            child: Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(75), color: Colors.green),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  '#98',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                const SizedBox(
                  width: 152,
                ),
                const Text(
                  '80,542 KM',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                const SizedBox(
                  width: 112,
                ),
                const SizedBox(
                  width: 240,
                  child: Text(
                    'Adjust Alignment',
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24, decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
