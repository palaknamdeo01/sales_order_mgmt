namespace com.training.sales; 
 
using { cuid, managed, Currency } from '@sap/cds/common'; 
type Email : String(100); 
 
entity Customers : cuid, managed { 
  name    : String(100) @mandatory; 
  email   : Email; 
  city    : String(50); 
  country : String(3); 
  orders  : Association to many Orders on orders.customer = $self; 
} 
 
entity Products { 
  key ID          : Integer; 
      name        : String(100) @mandatory; 
      description : String(500); 
      price       : Decimal(10, 2); 
      currency    : Currency; 
      stock       : Integer default 0;
     
} 
 
entity Orders : cuid, managed { 
  orderNo    : String(10); 
  orderDate  : Date; 
  status     : String(20) default 'New'; 
  totalAmount: Decimal(12, 2); 
  customer   : Association to Customers;
  items      : Composition of many OrderItems on items.order = $self;
}

entity OrderItems : cuid { 
  order    : Association to Orders;      
  product  : Association to Products;    
  quantity : Integer @mandatory; 
  price    : Decimal(10, 2); 
} 
