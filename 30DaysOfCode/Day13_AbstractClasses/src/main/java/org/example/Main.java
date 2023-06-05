package org.example;

import java.util.Scanner;

abstract class Book {  // Abstract classes não podem ser instânciadas, apenas herdadas.
    String title;
    String author;

    Book(String title, String author) {
        this.title = title;
        this.author = author;
    }

    abstract void display();
}

class MyBook extends Book {
    Integer price;
    public MyBook(String title, String author, Integer newPrice) {
        super(title, author);
        this.price = newPrice;
    }

    void display() {
        System.out.println("Title: "+title);
        System.out.println("Author: "+author);
        System.out.println("Price: "+price);
    }
}

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String title = scanner.nextLine();
        String author = scanner.nextLine();
        int price = scanner.nextInt();
        scanner.close();

        Book book = new MyBook(title, author, price);
        book.display();
    }
}