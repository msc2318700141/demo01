class PopularItem{
  String title,category,image;
  double price;
  PopularItem({
    this.title,this.category,this.image,this.price
  });
}
List<PopularItem> popularItemData = [
  PopularItem(image:'assets/1.jpg',title:'波士顿巧克力',category: '纸杯蛋糕'),
  PopularItem(image:'assets/2.jpg',title:'波士顿巧克力',category: '纸杯蛋糕'),
  PopularItem(image:'assets/3.jpg',title:'波士顿巧克力',category: '纸杯蛋糕')
];