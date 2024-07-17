import 'package:ark/ark.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wallet_kit/wallet_kit.dart';

part 'nft_details.g.dart';

@riverpod
Future<GetNFTResponse> getNFT(
    GetNFTRef ref, String tokenId, String nftAddress) {
  return Ark().nft.get(nftAddress, tokenId);
}

class NFTDetail extends ConsumerWidget {
  final String tokenId;
  final String nftAddress;

  const NFTDetail({
    super.key,
    required this.tokenId,
    required this.nftAddress,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nft = ref.watch(getNFTProvider(tokenId, nftAddress));
    final selectedAccount = ref.watch(walletsProvider.select(
      (value) => value.selectedAccount,
    ));
    return nft.when(
      error: (error, stackTrace) => Center(
        child: Text('Error: $error'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (data) => Center(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.0,
              child: Image.network(data.result.metadata!.normalized.image,
                  fit: BoxFit.contain),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                data.result.metadata!.normalized.name,
                softWrap: false,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (selectedAccount == null) {
                    showWalletList(context);
                    return;
                  }

                  final secureStore = await ref
                      .read(walletsProvider.notifier)
                      .getSecureStoreForWallet(context: context);

                  final starknetAccount =
                      await WalletService.getStarknetAccount(
                    secureStore: secureStore,
                    walletId: selectedAccount.walletId,
                    account: selectedAccount,
                  );

                  await Ark().starknet.createListing(
                      starknetAccount: starknetAccount,
                      nftAddress: nftAddress,
                      tokenId: tokenId,
                      startAmount: 1000000000000000000);
                },
                child: const Text('Sell'))
          ],
        ),
      ),
    );
  }
}
