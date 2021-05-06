const database = require('../lib/db');

module.exports.insertBooks = function(name) {
    return new Promise((resolve, reject) => {
        database.query(`INSERT INTO books (name, status) VALUES (?, ?)`, [name, 1], function (err, result) {
            if(err) {
                console.log(err)
                resolve(false)
            } else {
                resolve(result)
            }
        })
    })
}

module.exports.getBooks = function() {
    return new Promise((resolve) => {
        database.query(`SELECT * FROM books ORDER BY id DESC`, function(err, result) {
            if(err) {
                console.log(err)
                resolve(false)
            } else {
                resolve(result)
            }
        })
    })
}

module.exports.deleteBooks = function(id) {
    return new Promise((resolve) => {
        database.query(`UPDATE books SET status = ? WHERE id = ?`, [0, id], function(err, result) {
            if(err) {
                console.log(err)
                resolve(false)
            } else {
                resolve(result)
            }
        })
    })
}

module.exports.editBooks = function(id) {
    return new Promise((resolve) => {
        database.query(`SELECT * FROM books WHERE id = ?`, [id, 1], function(err, result) {
            if(err) {
                console.log(err)
                resolve(false)
            } else {
                resolve(result)
            }
        })
    })
}

module.exports.updateBooks = function(name, id) {
    return new Promise((resolve) => {
        database.query(`UPDATE books SET name = ? WHERE id = ?`, [name, id], function(err, result) {
            if(err) {
                console.log(err)
                resolve(false)
            } else {
                resolve(result)
            }
        })
    })
}