## Audi Cars Reservations Backend App

<a name="readme-top"></a>
<div align="center">
  <h3><b>Audi Cars Reservations Backend App</b></h3>
</div>
📗 Table of Contents <a name="table_of-contents"></a>

- [📗 Table of Contents](#table-of-contents)
- [📖 About project ](#about-project)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Deployment](#deployment)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [❓ FAQ ](#-faq-)
  - [📝 License ](#-license-)


## 📖 About the project - Audi Cars Reservations Backend App <a name="about-project"></a>

This is a Ruby on Rails (RoR) backend application to be used for an Audi Cars Reservation Web Application. The frontend app will connect with API endpoints configured in this backend application. It will include the creation of users, CRUD operations of Cars, as well as CRUD operations for Reservations (for drive tests). The backend app includes the gem to connect with a PostgreSQL database, the gem Devise for user authentication, and the gem RSpec for unit testing. It is not set up yet to include JavaScript or any CSS framework or precompiler.


## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

  <ul>
    <li><a href="https://ruby-doc.org/">Ruby v 3.2.2</a></li>
    <li><a href="https://rubyonrails.org/">Rails v 7.1.3.2</a></li>
    <li><a href="https://www.postgresql.org/">PostgreSQL v 16.1.1</a></li>
  </ul>

### Key Features <a name="key-features"></a>
- **A repo set up with Ruby on Rails, linters, and some gems like Devise for authentication and pg for connecting with a PostgreSQL database.**
- **Create, Read, Update, and Delete Users.**
- **Create, Read, Update, and Delete Cars.**
- **Create, Read, Update, and Delete Reservations (drive tests of cars).**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.


### Prerequisites

In order to run this project you need:

[Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)

[Set Up Rails](https://www.ruby-lang.org/en/documentation/installation/)

Prerequisites: Ruby, Ruby Development Kit (for Windows), Ruby Gems packaging system, and PostgreSQL database server. Run the following commands...
```sh
$ gem install rails
```


### Setup

```sh
  cd my-folder
  git clone https://github.com/jcmunav63/audi_cars_backend.git
```
- Remember that you will need to set up first the connection to the PostgreSQL database (username and password), and then ou will need to create the databases, before starting the development server.


### Install

This project requires the following dependencies: the Ruby interpreter, the Gem package manager, the Ruby on Rails web framework, a PostgreSQL database server, thr RSpec gem for unit testing, and the Devise gem for user authentication. Additionally, the project uses two linters checkers: RuboCop (Ruby) and Stylelint (CSS styles).

```sh
bundle install
```
- Note: The Devise gem needs to be installed, according to your needs (one option is to install the Views templates from the Devise gem and adapt the styles, and the other option is to create the Views from scratch and use them instead of the installed templates).

### Usage

To run the project, navigate to the project directory and execute the following command:

Start the Ruby on Rails web server (Puma server) typing the following command...
```sh
  rails s , or the complete command,
  rails server
```

### Run tests

* Install the Rubocop and Stylelint linters.

Install the Rubocop linters checker using the following steps...
- First add the following code to the Gem file:
```sh
gem 'rubocop', '>= 1.0', '< 2.0'
```
- Second run the command to install dependicies in your project:
```sh
bundle install
```
- Remember to copy the .rubocop.yml file to your root directory.

gem 'rubocop', '>= 1.0', '< 2.0'

Install Stylelint linters checker using the following command...
```sh
npm install --save-dev stylelint@13.x stylelint-scss@3.x stylelint-config-standard@21.x stylelint-csstree-validator@1.x
```
- Remember to copy the .stylelintrc.json file to the root directory.

- Copy the linters.yml file inside of path .github/workflows


To run LINTERS, run the following command:

Run the following command for Ruby code...
```sh
rubocop
```

Run the following command for CSS code...
```sh
npx stylelint "**/*.{css,scss}"
```

* Implement unit tests using RSpec.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Deployment

This Ruby on Rails Audi Cars Backend Application is deployed on Render. Visit the following link...
https://audi-cars-backend.onrender.com/

You can visit my presentation video at,,,
[Demo video (pending)...](https://youtu.be/url_here)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Authors <a name="authors"></a>

👤 **Fatema Nazari**

- GitHub: [@78fatemanazari](https://github.com/78fatemanazari)
- Twitter: [@fati_nazari78](https://twitter.com/fati_nazari78)
- LinkedIn: [@78fatemanazari](https://www.linkedin.com/in/78fatemanazari)

👤 **Md. Rafiduzzaman Nahin**

- GitHub: [@Rafiduzzaman](https://github.com/Rafiduzzaman)
- LinkedIn: [@md-rafiduzzaman-nahin](https://www.linkedin.com/in/md-rafiduzzaman-nahin-7431ab1b4/)

👤 **Mr. Francis Andoh**

- GitHub: [@CobbyElsonfx](https://github.com/CobbyElsonfx)
- LinkedIn: [@andoh-francis](https://www.linkedin.com/in/andoh-francis-133aa7245/)

👤 **Juan Carlos Muñoz**

- GitHub: [@jcmunav63](https://github.com/jcmunav63)
- Twitter: [@jcmunav63](https://twitter.com/jcmunav63)
- LinkedIn: [@juan-carlos-muñoz](https://www.linkedin.com/in/juan-carlos-mu%C3%B1oz-fullstackdev/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🔭 Future Features <a name="future-features"></a>

include JavaScript or any CSS frameworks or precompilers
- **Include the use of JavaScript and Bootstrap for CSS.**
- **Add future features here.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## ⭐️ Show your support <a name="support"></a>

If you like this project please give me a star on Github. Thanks in advance.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to acknowledge XXXXX for the original idea of this mobile/desktop app design. You can review his/her project at: [Source](https://www.source.com/resources/)

I would also like to thank all my colleagues, who inspire me to do my best everyday.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ❓ FAQ <a name="faq"></a>


**Did you create this project from scratch?**

  - Yes, it is a basic Ruby on Rails project for creating a basic web Ruby on Rails, with connection to an external PostgreSQL database, CRUD operations, data validation, user authentication, and testing.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
