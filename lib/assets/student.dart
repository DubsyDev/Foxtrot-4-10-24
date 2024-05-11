class Student{
  late String firstName;
  late String lastName;

  Student(this.firstName, this.lastName);
  String getFullName(){
    return '$firstName $lastName';
  }

}