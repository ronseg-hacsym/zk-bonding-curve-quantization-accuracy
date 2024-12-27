fn main(accuracy: pub Field) -> pub Field {
   assert((accuracy as u32) >= 5000); // 50.00%
   assert((accuracy as u32) <= 10000); // 100.00%
   
   // Returns enum index 0-5000 corresponding to each 0.01% step
   let enum_index = (accuracy as u32) - 5000;
   
   // Quantize to exactly 0.01% steps
   let quantized = (enum_index * 1);
   
   // Return Field value representing exact 0.01% enum
   // Example: 75.41% -> 237rd enum value
   Field::from(quantized as u8)
}