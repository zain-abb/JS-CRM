import 'package:js_crm/utils/network/network_info.dart';

import 'repository.dart';

class RepositoryImp extends Repository {
  final NetworkInfo networkInfo;

  RepositoryImp({
    required this.networkInfo,
  });
}
