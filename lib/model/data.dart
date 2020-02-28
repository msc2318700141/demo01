class ProductItem{
  String desc,imageUrl,type,name;
  ProductItem({
    this.desc,this.imageUrl,this.type,this.name
  });
}
List<ProductItem> productItemData = [
  ProductItem(imageUrl:'assets/1.jpg',desc:'屏幕尺寸：13.3英寸 处理器：Intel Core i5-8259',type: '纸杯蛋糕'),
  ProductItem(imageUrl:'assets/2.jpg',desc:'波士顿巧克力',type: '纸杯蛋糕'),
  ProductItem(imageUrl:'assets/3.jpg',desc:'波士顿巧克力',type: '纸杯蛋糕'),
];