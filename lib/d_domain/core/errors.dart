
import 'package:sardunya/d_domain/core/value_failure.dart';

//  to handle general error 

class UnexpectedValueError extends Error{
  final ValueFailure valueFailure;
  UnexpectedValueError(this.valueFailure);


  @override
  String toString() {
    const expolanation = 'Encountered a ValueFaulire at an unrecoverable point.';
    return Error.safeToString('$expolanation Failure was $valueFailure');
  }
}
class UnfoundedDeletionElement extends Error{
  final String id;
  UnfoundedDeletionElement(this.id);
}
class UnexpectedDatabaseError extends Error{
  
}