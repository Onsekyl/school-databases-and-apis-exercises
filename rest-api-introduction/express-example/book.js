const book =
{
    bookData:
    [
        {'name': "C++", 'author': "Vittu Saatana", 'isbn': "696969"},
        {'name': "Java", 'author': "Vittu Saatana", 'isbn': "696969"}
    ],

    getAllBooks()
    {
        return this.bookData;
    }
}

module.exports=book;