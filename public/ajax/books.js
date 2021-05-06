$('#message').hide()

$("#createModal").click(function(){
    $("#booksID").hide();
    $('#showUpdateBtn').hide()
    $('#showCreateBtn').show()
    $("#booksID").val('');
    $("#name").val('');
});

function CreateBooks() {
    const data = {
        name: $('#name').val()
    }

    $.post("/books/create", data, function(data){
        if(data.status === 'ok') {
            $('#name').val('')
            Swal.fire(
                'Good job!',
                data.message,
                'success'
            )
        } else {
            Swal.fire(
                'Error',
                data.message,
                'error'
            )
        }
    })
    $('#booksModal').modal('hide')
    GetBooks()
}

function DeleteBooks(id) {
    const data = {
        id: id
    }
    $.post('/books/delete', data, function(data) {
        if(data.status === 'ok') {
            alert(data.message)
        } else {
            alert(data.message)
        }
    })
    GetBooks()
}

function GetBooks() {
    $.get("/books", function(data, status){
        let table = $('#list-of-books >tbody')
        let statusBooks = ''
        const books = data.books
        
        table.empty()
        for(const row of books) {
            if(row.status === 0) {
                statusBooks = `<label class="text text-danger">In Active</label>`
            } else {
                statusBooks = `<label class="text text-success">Active</label>`
            }
            table.append(`
                <tr>
                    <td>${row.id}</td>
                    <td>${row.name}</td>
                    <td>${row.date_created}</td>
                    <td>${row.date_updated}</td>
                    <td>${statusBooks}</td>
                    <td>
                        <button class="btn btn-info" onclick="EditBooks(${row.id})" data-bs-toggle="modal" data-bs-target="#booksModal">Edit</button>
                        <button class="btn btn-danger" onclick="DeleteBooks(${row.id})">Delete</button>
                    </td>
                </tr>
            `)
        }
  });
}


function EditBooks(id) {
    $("#booksID").hide();
    $("#showUpdateBtn").show();
    $('#showCreateBtn').hide();
    
    $.get(`/books/edit?id=${id}`, function(data) {
        const id = data.books[0].id
        const name = data.books[0].name
        const status = data.books[0].status

        $('#booksID').val(id)
        $('#name').val(name)
    })
}

function UpdateBooks() {
    const id = $('#booksID').val()
    const name = $('#name').val()

    const data = {
        name: name,
        id: id
    }

    $.post('/books/update', data, function(data) {
        if(data.status === 'ok') {
            alert(data.message)
        } else {
            alert(data.message)
        }
    })

    $('#booksModal').modal('hide')
    GetBooks()
}
GetBooks()

