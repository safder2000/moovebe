import 'dart:developer';

abstract class FormSubmissionStatus {
  const FormSubmissionStatus();
}

class InitialFormStatus extends FormSubmissionStatus {
  const InitialFormStatus();
}

class FormSubmitting extends FormSubmissionStatus {}

class SubmissionSuccess extends FormSubmissionStatus {
  loginSuccess() {
    log('login success');
  }
}

class SubmissionFailed extends FormSubmissionStatus {
  final Exception exception;

  SubmissionFailed(this.exception);
  loginFailed() {
    log('login Failed $exception');
  }
}
