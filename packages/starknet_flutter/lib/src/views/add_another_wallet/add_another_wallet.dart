import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:starknet_flutter/src/views/add_another_wallet/widgets/wallet_action_button.dart';
import 'package:starknet_flutter/src/views/wallet/wallet_initialization.dart';

import 'add_another_wallet_presenter.dart';
import 'add_another_wallet_viewmodel.dart';

class StarknetAddAnotherWallet {
  static Future showAddAnotherWalletModal(
    BuildContext context,
  ) {
    return showBarModalBottomSheet(
      context: context,
      barrierColor: Colors.black.withOpacity(0.6),
      builder: (context) {
        return const AddAnotherWalletPage();
      },
    );
  }
}

abstract class AddAnotherWalletView {
  void refresh();
  void openWalletInitializationModal({
    String? initialRoute,
  });
  void closeModal();
}

class AddAnotherWalletArguments {
  AddAnotherWalletArguments();
}

class AddAnotherWalletPage extends StatefulWidget {
  final AddAnotherWalletArguments? args;
  const AddAnotherWalletPage({
    Key? key,
    this.args,
  }) : super(key: key);

  @override
  State<AddAnotherWalletPage> createState() => _AddAnotherWalletPageState();
}

class _AddAnotherWalletPageState extends State<AddAnotherWalletPage>
    implements AddAnotherWalletView {
  late AddAnotherWalletPresenter presenter;
  late AddAnotherWalletViewModel model;

  @override
  void dispose() {
    presenter.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    presenter = AddAnotherWalletPresenter(
      AddAnotherWalletViewModel(),
      this,
    ).init();
    model = presenter.viewModel;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add another wallet',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 25),
            WalletActionButton(
              title: 'Create a new wallet',
              subtitle: 'Create a new wallet to store your StarkNet assets',
              icon: Icons.add_circle_outline_rounded,
              gradient: const [
                Color(0xFF00B0FF),
                Color(0xFF0083FF),
              ],
              onTap: presenter.onCreateNewWalletTap,
            ),
            const SizedBox(height: 20),
            WalletActionButton(
              title: 'Restore a wallet',
              subtitle: 'Restore a wallet using your 12-word recovery phrase',
              icon: Icons.restore_rounded,
              gradient: const [
                Color(0xFF8E2DE2),
                Color(0xFF4A00E0),
              ],
              onTap: presenter.onRestoreWalletTap,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void refresh() => setState(() {});

  @override
  void openWalletInitializationModal({
    String? initialRoute,
  }) {
    closeModal();
    StarknetWallet.showInitializationModal(
      context,
      initialRoute: initialRoute,
    );
  }
  
  @override
  void closeModal() {
    Navigator.of(context).pop();
  }
}
