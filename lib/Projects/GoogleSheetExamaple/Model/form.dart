class FeedbackForm {
String _classname;
  String _name;
  String _fname;
  String _email;
  String _mobileNo;
  String _feedback;

  FeedbackForm(this._classname,this._name, this._fname,this._email,this._mobileNo, this._feedback, );

  // Method to make GET parameters.
  String toParams() =>
      "?classname=$_classname&name=$_name&fname=$_fname&email=$_email&mobileNo=$_mobileNo&feedback=$_feedback";


}