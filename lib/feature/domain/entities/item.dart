import 'package:equatable/equatable.dart';
import 'package:test_ordo_mobile_ui/feature/presentation/utils/app_constant.dart';

class ItemModel extends Equatable {
  final String image;
  final String diskon;
  final String title;
  final String hargaSekarang;
  final String hargaSebelum;
  const ItemModel({
    required this.image,
    required this.diskon,
    required this.title,
    required this.hargaSekarang,
    required this.hargaSebelum,
  });
  @override
  List<Object?> get props => [diskon, title, hargaSebelum, hargaSekarang];
}

List<ItemModel> listItem = [
  ItemModel(
      image: AppConstant.bag1,
      diskon: '10 %',
      title: 'Lorem Ipsum',
      hargaSekarang: 'Rp. 4500',
      hargaSebelum: 'Rp. 6000'),
  ItemModel(
      image: AppConstant.bag1,
      diskon: '10 %',
      title: 'Lorem Ipsum',
      hargaSekarang: 'Rp. 4500',
      hargaSebelum: 'Rp. 6000'),
  ItemModel(
      image: AppConstant.bag1,
      diskon: '10 %',
      title: 'Lorem Ipsum',
      hargaSekarang: 'Rp. 4500',
      hargaSebelum: 'Rp. 6000'),
  ItemModel(
      image: AppConstant.bag1,
      diskon: '10 %',
      title: 'Lorem Ipsum',
      hargaSekarang: 'Rp. 4500',
      hargaSebelum: 'Rp. 6000'),
  ItemModel(
      image: AppConstant.bag1,
      diskon: '10 %',
      title: 'Lorem Ipsum',
      hargaSekarang: 'Rp. 4500',
      hargaSebelum: 'Rp. 6000'),
  ItemModel(
      image: AppConstant.bag1,
      diskon: '10 %',
      title: 'Lorem Ipsum',
      hargaSekarang: 'Rp. 4500',
      hargaSebelum: 'Rp. 6000'),
  ItemModel(
      image: AppConstant.bag1,
      diskon: '10 %',
      title: 'Lorem Ipsum',
      hargaSekarang: 'Rp. 4500',
      hargaSebelum: 'Rp. 6000'),
];

List<ItemModel> listDetailItem = [
  ItemModel(
      image: AppConstant.bag1,
      diskon: '10 %',
      title: 'Lorem Ipsum',
      hargaSekarang: 'Rp. 4500',
      hargaSebelum: 'Rp. 6000'),
  ItemModel(
      image: AppConstant.bag1,
      diskon: '10 %',
      title: 'Lorem Ipsum',
      hargaSekarang: 'Rp. 4500',
      hargaSebelum: 'Rp. 6000'),
  ItemModel(
      image: AppConstant.bag1,
      diskon: '10 %',
      title: 'Lorem Ipsum',
      hargaSekarang: 'Rp. 4500',
      hargaSebelum: 'Rp. 6000'),
];
