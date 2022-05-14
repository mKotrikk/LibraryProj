package com.example.libraryproj.data;

public class Book {
    private int id;
    private String name;

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    private String author;
    private boolean borrowed;
    private User borrower;
    public Book(int pId, String pName, String pAuthor) {
        this.id = pId;
        this.name = pName;
        this.author = pAuthor;
        this.borrowed = false;
    }

    public boolean borrow(User user) {
        if (!borrowed) {
            this.borrower = user;
            this.borrowed = true;
            return true;
        }
        return false;
    }

    public boolean returnBook() {
        if (this.borrowed) {
            this.borrower = null;
            this.borrowed = false;
            return true;
        }
        return false;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isBorrowed() {
        return this.borrowed;
    }

    public void setBorrowed(boolean borrowed) {
        this.borrowed = borrowed;
    }

    public User getBorrower() {
        return borrower;
    }

    public void setBorrower(User borrower) {
        this.borrower = borrower;
    }

    @Override
    public String toString() {
        String status;
        if (borrowed) {
            status = "borrowed by id: " + this.borrower.getId();
        } else {
            status = "available";
        }
        return this.id + " | "
                + this.name + " | "
                + this.author + " | "
                + status;
    }
}
