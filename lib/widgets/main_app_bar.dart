import 'package:flutter/material.dart';
import 'package:mutual_wallet/models/hours.dart';
import 'package:mutual_wallet/models/user.dart';

class MainAppBar extends AppBar {
  MainAppBar(User _user, {Key? key})
      : super(
          key: key,
          title: Row(
            children: [
              Text(
                _user.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(flex: 10),
              Text(
                Hours(_user.balance).toString(),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        );
}
