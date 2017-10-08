CourseFinder
------------------------------
A ruby-on-rails web application to find the courses from **Coursera** using course keyword.

Live
------------------------------
**CourseFinder** is live on [https://course-finder-astikanand.herokuapp.com](https://course-finder-astikanand.herokuapp.com)


Features
------------------------------
* User can search all the courses by providing just course keyword.
* Makes use of **REst api provided by coursera** from [https://api.coursera.org/api/courses.v1](https://api.coursera.org/api/courses.v1)
* Uses fields name, photoUrl and description provided by API.

Usage
------------------------------
* Just provide keyword course and it's value in url.
  - Example:   
      To search for all courses related to Java. 
      https://course-finder-astikanand.herokuapp.com/?course=java
      
      and to search for all courses related to Ruby. 
      https://course-finder-astikanand.herokuapp.com/?course=ruby



Requirements
------------------------------
ruby-2.3.3
rails-5.1.4



Installation
------------------------------

1. Download or clone the repository.
    
    ```
    $ git clone https://github.com/astikanand/course-finder.git
    ```

2. Install dependencies by going into the project directory and then

    ```
    $ cd course-finder
    $ bundle install
    ```

3. Open your browser and hit [localhost:8000](http://localhost:8000/) 



Running Unit Tests
------------------------------

* Install PhantomJS (http://phantomjs.org/)

* Run the following inside your terminal:

  ```shell
  $ gem install rspec
  $ gem install selenium-webdriver
  $ gem install capybara
  $ gem install poltergeist
  ```

* Run the following in your terminal (right outside of `spec` dir):

   ```shell
   $ rspec
   ```

   or in better format

   ```shell
   $ rspec --format documentation
   ```

   to see the magic.

**Headless mode**

```ruby
# Capybara.default_driver = :selenium
# Headless
Capybara.default_driver = :poltergeist
```
    

Preview
------------------------------

**Home**

![CourseFinder Home Page](https://i.imgur.com/antKnGj.png)
