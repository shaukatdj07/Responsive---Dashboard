
class RecentActivity {

  final String icon;
  final String label;
  final String amount;
  final String status;

  RecentActivity({
required this.icon,
required this.label,
required this.amount,
required this.status,
  });
}


List<RecentActivity> recentActivities = [
RecentActivity(
  icon: 'water_bill.svg',
  label: 'Water Bill',
  amount: "\$120", 
  status: 'Successfully'
  ),
  RecentActivity(
  icon: 'salary.svg',
  label: 'Income Salary', 
  amount: "\$4500", 
  status: 'Received'
  ),
  RecentActivity(
  icon: 'current.svg',
  label: 'Electric Bill', 
  amount: "\$150", 
  status: 'Successfully'
  ),
  RecentActivity(
  icon: 'figi.svg',
  label: 'Internet Bill', 
  amount: "\$60", 
  status: 'Successfully'
  ),
];


class UpcomingPayment{
final String icon;
  final String label;
  final String amount;
  final String status;

  UpcomingPayment({
required this.icon,
required this.label,
required this.amount,
required this.status,
  });

}


List<UpcomingPayment> upcomingPayments = [
UpcomingPayment(
  icon: 'home.svg',
  label: 'Home Rent', 
  amount: "\$500",
  status: 'Pending'
  ),
  UpcomingPayment(
  icon: 'salary.svg',
  label: 'Car Insurance', 
  amount: "\$150", 
  status: 'Pending'
  ),
  
];


class TransactionHistory{
  final String avatar;
  final String label;
  final String amount;
  final String time;
  final String status;

  TransactionHistory({
required this.avatar,
required this.label,
required this.amount,
required this.time,
required this.status,
  });
}

List<TransactionHistory> transactionHistory = [
TransactionHistory(
  avatar:
   'https://portraitsrefined.com/wp-content/uploads/2021/10/headshot-girl-smiling.jpg',
  label: 'Loan', 
  amount: "\$1200", 
  time: '10:20:12 AM',
  status: 'Completed'
  ),
  TransactionHistory(
  avatar:
   'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg', 
  label: 'Car Insurance', 
  amount: "\$350", 
  time: '9:50:12 PM',
  status: 'Completed'
  ),
  
  TransactionHistory(
  avatar:
  'https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.jpg?s=612x612&w=0&k=20&c=tyLvtzutRh22j9GqSGI33Z4HpIwv9vL_MZw_xOE19NQ=',
    label: 'Online Payment', 
  amount: "\$100", 
  time: '3:37:12 PM',
  status: 'Completed'
  ),
  
];


class InfoCardModel{
  final String icon;
  final String label;
  final String amount;

  InfoCardModel({
    required this.icon,
    required this.label,
    required this.amount,
  });
}

final List<InfoCardModel> infoCarModel = [
InfoCardModel(
  icon: 'transfer.svg',
  label: 'Transfer via \nOnline Bank',
  amount: '\$200'
  ),
InfoCardModel(
  icon: 'bank.svg',
  label: 'Transfer \nSame Bank',
  amount: '\$1000'
  ),

InfoCardModel(
  icon: 'doc.svg',
  label: 'Transfer to \nOther Bank',
  amount: '\$2000'
  ),
] ;

const menuIcons = [
'home.svg',
'pie-chart.svg',
'clipboard.svg',
'credit-card.svg',
'trophy.svg',
'invoice.svg',
];
