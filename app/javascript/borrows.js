document.addEventListener('DOMContentLoaded', function () {
    var booklistSelect = document.getElementById('booklist_select');
    var bookDetailsDiv = document.getElementById('book-details');

    if (booklistSelect) {
        booklistSelect.addEventListener('change', function () {
            var booklistId = booklistSelect.value;
            if (booklistId) {
                fetch(`/borrows/book_details?booklist_id=${booklistId}`, {
                    headers: {
                        'Accept': 'application/json'
                    }
                })
                    .then(response => response.json())
                    .then(data => {
                        // Update the book details div with the received data
                        bookDetailsDiv.innerHTML = `
              <p><strong>Title:</strong> ${data.title}</p>
              <p><strong>Author:</strong> ${data.author}</p>
              <p><strong>ISBN:</strong> ${data.isbn}</p>
              <p><strong>Description:</strong> ${data.description}</p>
            `;
                    });
            } else {
                bookDetailsDiv.innerHTML = '';
            }
        });
    }
});
