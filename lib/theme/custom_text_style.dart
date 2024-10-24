import 'package:flutter/material.dart';

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(fontFamily: 'DM Sans');
  }

  TextStyle get roboto {
    return copyWith(fontFamily: 'Roboto');
  }

  TextStyle get inter {
    return copyWith(fontFamily: 'Inter');
  }

  TextStyle get coda {
    return copyWith(fontFamily: 'Coda');
  }

  TextStyle get poppins {
    return copyWith(fontFamily: 'Poppins');
  }
}
