class Student {
  String studentId;
  String studentName;
  int studentScores;
  Student({
    this.studentId,
    this.studentName,
    this.studentScores,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      studentId: json["id"],
      studentName: json["name"],
      studentScores: json["score"],
    );
  }
}
