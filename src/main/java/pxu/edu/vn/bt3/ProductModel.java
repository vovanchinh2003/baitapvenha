package pxu.edu.vn.bt3;

public class ProductModel {
	private int productID;
	private String productName;
	public ProductModel() {
		super();
	}
	public ProductModel(int productID, String productName) {
		super();
		this.productID = productID;
		this.productName = productName;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	@Override
	public String toString() {
		return "ProductModel [productID=" + productID + ", productName=" + productName + "]";
	}
	
	
}
