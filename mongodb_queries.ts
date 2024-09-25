--1) inserting new sale record 

db.sales.find({});

--2) inserting new sale record

db.sales.insertOne({
  order_id: "SQ-3345-398477",
  order_date: "2024-09-25",
  ship_date: "2024-09-28",
  ship_mode: "First Class",
  customer_id: "SY-65442",
  product_id: "OFF-LA-10000240",
  sales: 300,
  quantity: 2,
  discount: 0.1,
  profit: 60
});


--3) update discount for particular order_id

db.sales.updateOne(
  { order_id: "CA-2016-138688" },
  { $set: { discount: 0.15 } }
);


--4) delete sales record

db.sales.deleteOne({ order_id: "SQ-3345-398477" });


--5) select total sales per customer

db.sales.aggregate([
    { $group: { _id: "$customer_id", total_sales: { $sum: "$sales" } } }
  ]);
  

--6) finding all product of particular category

db.product.find({ category: "Furniture" });


--7) select top 5 most profitable salres order

db.sales.find({}).sort({ profit: -1 }).limit(5);
