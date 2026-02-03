const book=
{
    bookData:
    [
        {'name':"Everything You Ever Wanted To Know", 'author':"Upton", 'isbn':"082305649x"},
        {'name':"Photography", 'author':"Vilppu", 'isbn':"205711499"},
        {'name':"Drawing Manual Vilppu", 'author':"Zelanshi", 'isbn':"1892053039"}
    ],

    getAllBooks()
    {
        console.log(this.bookData);
    },

    getOneBook(index)
    {
        console.log(this.bookData[index].name + " " + this.bookData[index].author);
    },

    addBook(name, author, isbn)
    {
        this.bookData.push(this.bookData.name=name, this.bookData.author=author, this.bookData.isbn=isbn);
    }
}

// book.getAllBooks();
// book.getOneBook(1);
// book.addBook("Lisäkirja", "Auttori", "adsfxasdf");
// book.getAllBooks();

export default book;
