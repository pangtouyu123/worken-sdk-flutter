library worken_sdk;

import 'package:worken_sdk/core/di/injectable_config.dart';
import 'package:worken_sdk/core/secure/dotenv.dart';
import 'package:worken_sdk/features/wallet/data/services/i_wallet_service.dart';
import 'package:worken_sdk/i_worken_sdk.dart';

/// A WorkenSdk.
class WorkenSdk extends IWorkenSdk {
  //@override
  //final Web3Client client = Web3Client(Routes.maticvigil, Client());

  @override
  Future<void> onStart() async {
    configureGetIt();
    await configureDotenv();
  }

  @override
  IWalletService walletService() => locator.get<IWalletService>();
}
