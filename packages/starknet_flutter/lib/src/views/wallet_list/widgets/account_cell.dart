import 'package:flutter/material.dart';
import 'package:starknet_flutter/src/models/models.dart';
import 'package:starknet_flutter/src/views/widgets/bouncing_button.dart';

class AccountCell extends StatelessWidget {
  final PublicAccount account;
  final Function()? onPressed;

  const AccountCell({
    super.key,
    required this.onPressed,
    required this.account,
  });

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    account.name,
                    style: const TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 3.0),
                  FutureBuilder<double>(
                    future: account.balance,
                    builder: (context, snapshot) {
                      if (snapshot.data == null) {
                        return const SizedBox.shrink();
                      }
                      return Text(
                        '${snapshot.requireData} ETH',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
