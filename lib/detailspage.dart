import 'package:api_fetch/datamodel.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final DataModel dataModel;

  const DetailsPage({Key? key, required this.dataModel}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: widget.dataModel.users!.length,
        itemBuilder: (context, index) {
          return Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.dataModel.users![index].firstName!.toString(),
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.dataModel.users![index].maidenName!.toString(),
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.dataModel.users![index].lastName!.toString(),
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Text(
              'Age: ${widget.dataModel.users![index].age}',
              style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'gender: ${widget.dataModel.users![index].gender}',
              style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'email: ${widget.dataModel.users![index].email}',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'phone: ${widget.dataModel.users![index].phone}',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Username: ${widget.dataModel.users![index].username}',
                    style: const TextStyle(
                      color: Colors.redAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Password: ${widget.dataModel.users![index].password}',
                    style: const TextStyle(
                      color: Colors.redAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'birthday:${widget.dataModel.users![index].birthDate}',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'height:${widget.dataModel.users![index].height}',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.pink,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'weight:${widget.dataModel.users![index].weight}',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.pink,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Text(
              'EyeColor:${widget.dataModel.users![index].eyeColor}',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Hair Colour:${widget.dataModel.users![index].hair!.color}',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Hair Type:${widget.dataModel.users![index].hair!.type}',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Text(
              'Domain:${widget.dataModel.users![index].domain}',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.amber,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'IP:${widget.dataModel.users![index].ip.toString()}',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.amber,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Address:${widget.dataModel.users![index].address!.address}',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'City:${widget.dataModel.users![index].address!.city}',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Lat:${widget.dataModel.users![index].address!.coordinates!.lat.toString()}, lng${widget.dataModel.users![index].address!.coordinates!.lng.toString()}',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Postal Code:${widget.dataModel.users![index].address!.postalCode}, State${widget.dataModel.users![index].address!.state}',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.yellow,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'MacAdress:${widget.dataModel.users![index].macAddress}',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 135, 64, 165),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'University:${widget.dataModel.users![index].university}',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 76, 161, 222),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'CardExpire:${widget.dataModel.users![index].bank!.cardExpire!.toString()}',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 76, 161, 222),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Card Number:${widget.dataModel.users![index].bank!.cardNumber!.toString()}',
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 76, 161, 222),
                  fontWeight: FontWeight.w600),
            ),
          ]);
        },
      ),
    );
  }
}
