package com.example.libraryproj.repos;

import com.example.libraryproj.data.Book;

import java.util.ArrayList;

public class BookList {
    public ArrayList<Book> getBookArrayList() {
        return bookArrayList;
    }

    private ArrayList<Book> bookArrayList = new ArrayList<>();
    private static BookList bookList;

    public static BookList getBookList() {
        if (BookList.bookList == null) {
            BookList.bookList = new BookList();
        }
        return BookList.bookList;
    }

    private BookList() {
    }

    public void insert(Book book) {
        this.bookArrayList.add(book);
    }

    public int getSize() {
        return this.bookArrayList.size();
    }

    public Book getBookById(int id) {
        for (Book book: this.bookArrayList) {
            if (book.getId() == id) {
                return book;
            }
        }
        return null;
    }

    @Override
    public String toString() {
        String fullString = "";
        for (Book book: this.bookArrayList) {
            fullString += book.toString() + "<br/>";
        }
        return fullString;
    }
}
