package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    private static ProductRepository instance = new ProductRepository();

   public static ProductRepository getInstance(){
	return instance;
   }


	public ProductRepository() {
		Product adidas_footballboot1 = new Product("P1234", "PREDATOR", 199000);
		adidas_footballboot1.setDescription("245~290, Composition Leather, FG");
		adidas_footballboot1.setCategory("Football Boot");
		adidas_footballboot1.setManufacturer("Adidas");
		adidas_footballboot1.setUnitsInStock(1000);
		adidas_footballboot1.setCondition("New");
        
        adidas_footballboot1.setFilename("P1234.jpg");
        
        Product adidas_footballboot2 = new Product("P1235", "X", 209000);
		adidas_footballboot2.setDescription("250~290, Composition Leather, FG, HG, AG,");
		adidas_footballboot2.setCategory("Football Boot");
		adidas_footballboot2.setManufacturer("Adidas");
		adidas_footballboot2.setUnitsInStock(1000);
		adidas_footballboot2.setCondition("New");
        adidas_footballboot2.setFilename("P1235.jpg");
        
        Product adidas_footballboot3 = new Product("P1236", "COPA", 189000);
		adidas_footballboot3.setDescription("250~285, Composition Leather, FG, HG, AG,");
		adidas_footballboot3.setCategory("Football Boot");
		adidas_footballboot3.setManufacturer("Adidas");
		adidas_footballboot3.setUnitsInStock(1000);
		adidas_footballboot3.setCondition("New");
        adidas_footballboot3.setFilename("P1236.jpg");
        
        Product nike_footballboot1 = new Product("P1237", "MERCURIAL", 339000);
		nike_footballboot1.setDescription("255~290, Artificial Leather, FG");
		nike_footballboot1.setCategory("Football Boot");
		nike_footballboot1.setManufacturer("NIKE");
		nike_footballboot1.setUnitsInStock(1000);
		nike_footballboot1.setCondition("New");
        nike_footballboot1.setFilename("P1237.jpg");

        Product nike_footballboot2 = new Product("P1238", "PHANTOM GT", 289000);
		nike_footballboot2.setDescription("245~285, Composition Leather, FG");
		nike_footballboot2.setCategory("Football Boot");
		nike_footballboot2.setManufacturer("NIKE");
		nike_footballboot2.setUnitsInStock(1000);
		nike_footballboot2.setCondition("New");
        nike_footballboot2.setFilename("P1238.jpg");
        
        Product nike_footballboot3 = new Product("P1239", "TIEMPO", 269000);
		nike_footballboot3.setDescription("245~275, Composition Leather, FG");
		nike_footballboot3.setCategory("Football Boot");
		nike_footballboot3.setManufacturer("NIKE");
		nike_footballboot3.setUnitsInStock(1000);
		nike_footballboot3.setCondition("New");
        nike_footballboot3.setFilename("P1239.jpg");
        
        Product mizuno_footballboot1 = new Product("P1240", "MORELIA NEO", 293000);
		mizuno_footballboot1.setDescription("250~275, K Leather, FG, HG, AG");
		mizuno_footballboot1.setCategory("Football Boot");
		mizuno_footballboot1.setManufacturer("MIZUNO");
		mizuno_footballboot1.setUnitsInStock(1000);
		mizuno_footballboot1.setCondition("New");
        mizuno_footballboot1.setFilename("P1240.jpg");
        
        Product mizuno_footballboot2 = new Product("P1241", "REBULA", 239000);
		mizuno_footballboot2.setDescription("260~265, K Leather, FG, HG, AG");
		mizuno_footballboot2.setCategory("Football Boot");
		mizuno_footballboot2.setManufacturer("MIZUNO");
		mizuno_footballboot2.setUnitsInStock(1000);
		mizuno_footballboot2.setCondition("New");
        mizuno_footballboot2.setFilename("P1241.jpg");
        
        Product mizuno_footballboot3 = new Product("P1242", "MORELIA", 237000);
		mizuno_footballboot3.setDescription("265~270, K Leather, FG, HG, AG");
		mizuno_footballboot3.setCategory("Football Boot");
		mizuno_footballboot3.setManufacturer("MIZUNO");
		mizuno_footballboot3.setUnitsInStock(1000);
		mizuno_footballboot3.setCondition("Old");
        mizuno_footballboot3.setFilename("P1242.jpg");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(adidas_footballboot1);
        listOfProducts.add(adidas_footballboot2);
        listOfProducts.add(adidas_footballboot3);
		listOfProducts.add(nike_footballboot1);
        listOfProducts.add(nike_footballboot2);
        listOfProducts.add(nike_footballboot3);
        listOfProducts.add(mizuno_footballboot1);
        listOfProducts.add(mizuno_footballboot2);
        listOfProducts.add(mizuno_footballboot3);
    }

		// listOfProducts.add(상품명);
	

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

    public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
       public void addProduct(Product product) {
	listOfProducts.add(product);
   }


}