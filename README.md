Blog 
=================

## Web applikáció, amivel lehet saját cikket írni.

### Futtatás:

1. Docker megépítése az adatbázis alapján 
    
    ```
    docker build -t blog:blog-db -f Dockerfile.db .
    ```

2. Adatbázis futtatása 

    ```
    docker run -p 5432:5432 -e POSTGRES_USER=blog -e POSTGRES_PASSWORD=blog -e POSTGRES_DB=blog --name blog_db blog:blog-db
    ```
    
    Új terminálba:

3. Megnyitás 

    ```
    mvn clean package
    ```

4. Web-szerver megépítése

    ```
    docker build -t blog:blog-web -f Dockerfile.web .
    ```

5. Futtatása a Web-szervernek 

    ```
    docker run -it --rm -p 8080:8080 --name blog_web --link blog_db  blog:blog-web
    ```
