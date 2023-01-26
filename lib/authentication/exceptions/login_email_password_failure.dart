class loginWithEmailAndPasswordFailure{
  final String message;

  const loginWithEmailAndPasswordFailure([this.message = "An Unknown Error Occured"]);

  factory loginWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'wrong-password':
        return const loginWithEmailAndPasswordFailure('Incorrect Password');
      case 'invalid-email':
        return const loginWithEmailAndPasswordFailure('Email is not valid or badly formatted.');
      case 'operation-not-allowed':
        return const loginWithEmailAndPasswordFailure('Operation is not allowed. Please contact support.');
      case 'user-disabled':
        return const loginWithEmailAndPasswordFailure('This user has been disabled. Please contact support for the help.');
      default :
        return const loginWithEmailAndPasswordFailure();
    }
  }
}