import 'package:dartz/dartz.dart';
import 'package:tonight_partners/domain/club_sales/club_sales_entity.dart';
import 'package:tonight_partners/domain/club_sales/club_sales_failure.dart';

abstract class ClubSalesFacade {
  Stream<Either<ClubSalesFailure, ClubSales>> getClubSales();
}
