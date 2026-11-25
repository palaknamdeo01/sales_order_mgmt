using { com.training.sales as db } from '../db/schema'; 
 
service CatalogService { 
 
  // (a) select columns + filter rows + read-only 
  @readonly 
  entity Products as projection on db.Products { 
    ID, 
    name, 
    description, 
    price, 
    currency, 
    stock 
  } where stock > 0; 
 
  // (b) rename a column and hide e-mail 
  @readonly 
  entity Customers as projection on db.Customers { 
    ID, 
    name as customerName, 
    city, 
    country 
  }; 
 
  // (c) flatten an association with a path expression 
  @readonly 
  entity OrderOverview as projection on db.Orders { 
    ID, 
    orderNo, 
    orderDate, 
    status, 
    totalAmount, 
    customer.name as customerName 
  }; 
 
  // (d) take everything except some fields 
  @readonly 
  entity OrderItems as projection on db.OrderItems excluding { price }; 
} 