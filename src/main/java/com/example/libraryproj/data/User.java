package com.example.libraryproj.data;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class User {
    private int id;
    private String name;
    private String surname;
    private String city;
    private String address;

    public int getBorrowedCount() {
        return borrowedCount;
    }

    public void setBorrowedCount(int borrowedCount) {
        this.borrowedCount = borrowedCount;
    }

    private int borrowedCount;
    private final ArrayList<Book> borrowedBooks = new ArrayList<>();

    public User(int pId, String pName, String pSurname, String pCity, String pAddress, int pBorrowedCount) {
        this.name = pName;
        this.surname = pSurname;
        this.city = pCity;
        this.address = pAddress;
        this.id = pId;
        this.borrowedCount = pBorrowedCount;
    }

    public void borrow(Book book) {
        this.borrowedBooks.add(book);
        this.borrowedCount++;
    }

    public boolean returnBook(int id) {
        for (Book book : this.borrowedBooks) {
            if (book.getId() == id) {
                this.borrowedBooks.remove(book);
                this.borrowedCount--;
                return true;
            }
        }
        return false;
    }

    public String getBorrowedBooksToString() {
        StringBuilder fullString = new StringBuilder();
        for (Book book: this.borrowedBooks) {
            fullString.append(book.toString()).append("\n");
        }
        return fullString.toString();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public ArrayList<Book> getBorrowedBooks() {
        return borrowedBooks;
    }

    @Override
    public String toString() {
        StringBuilder finalString = new StringBuilder(this.id + " | "
                + this.name + " | "
                + this.surname + " | "
                + this.city + " | "
                + this.address + " | "
                + this.borrowedCount);
        if (!this.borrowedBooks.isEmpty()) {
            Comparator<Book> comparator = new Comparator<Book>() {
                @Override
                public int compare(Book o1, Book o2) {
                    int id1 = o1.getId();
                    int id2 = o2.getId();
                    return id1 - id2;
                }
            };
            this.borrowedBooks.sort(comparator);
            for (Book book : this.borrowedBooks) {
                finalString.append("\n<br>--->").append(book.toString());
            }
        }
        return finalString.toString();
    }
}
