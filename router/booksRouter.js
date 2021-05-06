const express = require('express');
const router = express.Router();
const Books = require('./../models/books')

// display books page
router.get('/', (request, response, next) => {
    
    response.render('books/index')
});

// display books page
router.get('/books', async (request, response, next) => {
    const books = await Books.getBooks()
    response.json({ books: books })
});


// create books page
router.post('/books/create', async (request, response, next) => {
    const name = request.body.name

    const result = await Books.insertBooks(name)
    let message = 'Successfully inserted'
    let status = 'ok'
    if(result === false) {
         message = 'Error Insert Books'
         status = 'error'
    }
    response.json({ message, status })
});


// display books page
router.get('/books/edit', async (request, response, next) => {
    const id = request.query.id 
    let status = 'ok'
    let message = ''
    const books = await Books.editBooks(id)
    if(books.length === 0) {
        status = 'error'
        message = 'Error fetch id ' + id
    }
    response.json({ books: books })
});



// display books page
router.post('/books/update', async function(request, response, next) {
    const { name, id } = request.body
    let status = 'ok'
    let message = 'Successfully updated Books'
    const books = await Books.updateBooks(name, id)
    if(books === false) {
        message = 'Error Updates Books'
        status = 'error'
   }
    response.json({ message, status })
});

router.post('/books/delete', async function(request, response, next) {
      const id = request.body.id
      let status = 'ok'
      let message = 'Successfully Deactivated'
      const result = await Books.deleteBooks(id)
      if(result === false) {
          status = 'error'
          message = 'Error Deactivated'
      }
      response.json({ status, message })
});



module.exports = router;