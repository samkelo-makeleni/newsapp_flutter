import 'package:newsapp_flutter/models/category_model.dart';

List<CategoryModel> getCategories(){

List<CategoryModel> category =  [];
CategoryModel categoryModel = new CategoryModel();
//1
categoryModel.categoryName = "Business";
categoryModel.imageUrl = "https://www.istockphoto.com/photo/handsome-young-arab-businessman-using-digital-tablet-while-waiting-at-airport-gm1337913218-418665735?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fbusiness-man&utm_term=business%20man%3A%3Asearch-explore-top-affiliate-outside-feed-x-v2%3Acontrol";
category.add(categoryModel);
categoryModel = CategoryModel();

//2
categoryModel.categoryName = "Entertaiment";
categoryModel.imageUrl = "https://www.istockphoto.com/photo/female-latina-teacher-with-hispanic-kids-in-classroom-at-school-gm1301989502-393871014?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fentertaiment&utm_term=entertaiment%3A%3Asearch-explore-top-affiliate-outside-feed-x-v2%3Acontrol";
category.add(categoryModel);
//categoryModel = CategoryModel();
//3
categoryModel.categoryName = "General";
categoryModel.imageUrl = "https://www.istockphoto.com/photo/young-woman-at-the-dentist-gm1301303290-393383621?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fgeneral&utm_term=general%3A%3Asearch-explore-top-affiliate-outside-feed-x-v2%3Acontrol";
category.add(categoryModel);
//categoryModel = CategoryModel();
//4
categoryModel.categoryName = "Health";
categoryModel.imageUrl = "https://www.istockphoto.com/photo/handsome-young-arab-businessman-using-digital-tablet-while-waiting-at-airport-gm1337913218-418665735?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fbusiness-man&utm_term=business%20man%3A%3Asearch-explore-top-affiliate-outside-feed-x-v2%3Acontrol";
category.add(categoryModel);
//categoryModel = CategoryModel();
//5
categoryModel.categoryName = "Science";
categoryModel.imageUrl = "https://www.istockphoto.com/photo/teenage-student-using-the-microscope-in-the-laboratory-gm1356638196-430761970?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fscience&utm_term=science%3A%3Asearch-explore-top-affiliate-outside-feed-x-v2%3Acontrol";
category.add(categoryModel);
//categoryModel = CategoryModel();
//6
categoryModel.categoryName = "Sport";
categoryModel.imageUrl = "https://unsplash.com/photos/n6gnCa77Urc";
category.add(categoryModel);
//categoryModel = CategoryModel();
//7
categoryModel.categoryName = "Technology";
categoryModel.imageUrl = "https://www.istockphoto.com/photo/shot-of-two-young-technicians-using-a-digital-tablet-while-working-in-a-server-room-gm1347880350-425249825?utm_source=unsplash&utm_medium=affiliate&utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Ftechnologies&utm_term=technologies%3A%3Asearch-explore-top-affiliate-outside-feed-x-v2%3Acontrol";
category.add(categoryModel);
//categoryModel = CategoryModel();

return category;

}