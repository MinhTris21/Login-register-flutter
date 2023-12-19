//LOGIN VIEW EXCEPTIONS

class UserNotFoundAuthException implements Exception {}

class WrongPasswordAuthException implements Exception {}

//REGISTER VIEW EXCEPTIONS
class WeakPasswordAuthException implements Exception {}

class EmailAlreadyInUseAuthException implements Exception {}

class InvaldEmailAuthException implements Exception {}

//GENERICS EXCEPTIONS
class GenericAuthException implements Exception {}

class UserNotLoggedInAuthException implements Exception {}
