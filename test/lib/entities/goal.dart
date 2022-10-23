import 'package:test/entities/aspect.dart';
import 'package:test/entities/goal.dart';
import 'package:isar/isar.dart';
part 'goal.g.dart';
@collection 
class Goal {
  Id id = Isar.autoIncrement;
  late String titel;
  final goalDependency = IsarLink<Goal>(); //if goal depends on onther gaol
  final aspect = IsarLink<Aspect>(); // has a relation each goal belong to one aspect 
  late String duration ;
 @Index()// to be always arranged based on the importance 
  late int importance ; 
  late DateTime dueDate ;
  late String goalDuration; 
 }