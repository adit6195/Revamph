
class signUpWithEmailAndPasswordFailure {
  final String message;

  const signUpWithEmailAndPasswordFailure([this.message = "An Unknown error occured."]);

  factory signUpWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'weak-password':
        return const signUpWithEmailAndPasswordFailure('Please enter stronger password.');
      case 'invalid-email':
        return const signUpWithEmailAndPasswordFailure('Email is not valid or badly formatted.');
      case 'email-already-in-use':
        return const signUpWithEmailAndPasswordFailure('An account already exist using this email.');
      case 'operation-not-allowed':
        return const signUpWithEmailAndPasswordFailure('Operation is not allowed. Please contact support.');
      case 'user-disabled':
        return const signUpWithEmailAndPasswordFailure('This user has been disabled. Please contact support for the help.');
      default :
        return const signUpWithEmailAndPasswordFailure();
    }
  }
}