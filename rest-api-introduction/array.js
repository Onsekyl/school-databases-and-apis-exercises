const book=
[
    {'name':"Everything You Ever Wanted To Know", 'author':"Upton", 'isbn':"082305649x"},
    {'name':"Photography", 'author':"Vilppu", 'isbn':"205711499"},
    {'name':"Drawing Manual Vilppu", 'author':"Zelanshi", 'isbn':"1892053039"}
]

console.log("Type of the book:");
console.log(typeof(book));

console.log("\nWhole array:");
console.log(book);

console.log("\nFirst row:");
console.log(book[0]);

console.log("\nFirst book's name:");
console.log(book[0].name);

console.log("\nRow count:");
console.log(book.length);

console.log("\nNames of the books with a for loop:");
for (let row = 0; row < book.length; row++)
{
    console.log(book[row].name);
}

console.log("\nNames of the books with a foreach loop:")
book.forEach(book =>
{
    console.log(book.name);
});
