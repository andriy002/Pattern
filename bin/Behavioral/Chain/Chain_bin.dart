import 'Chain.dart';

void main() {
  Action siteNotifier = SiteNotifier(Prioritety.smallAction);
  Action emailNotifier = EmailNotifier(Prioritety.action);
  Action smsNotifier = SmsNotifier(Prioritety.superAction);

  siteNotifier.setNextNotifier = emailNotifier;
  emailNotifier.setNextNotifier = smsNotifier;

  siteNotifier.notifyManager('-10% all product', Prioritety.smallAction);
  print('*' * 100);
  siteNotifier.notifyManager('-30% all product', Prioritety.action);
  print('*' * 100);
  siteNotifier.notifyManager('-50% all product', Prioritety.superAction);
}
