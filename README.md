<a name="readme-top"></a>

<div align="center">
  <br/>

  <h3><b>Realtime Search</b></h3>


  <!-- Badges -->
<p>
  <a href="https://github.com/desorgui/realtime-search/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/desorgui/realtime-search" alt="contributors" />
  </a>
  <a href="">
    <img src="https://img.shields.io/github/last-commit/desorgui/realtime-search" alt="last update" />
  </a>
  <a href="https://github.com/desorgui/realtime-search/network/members">
    <img src="https://img.shields.io/github/forks/desorgui/realtime-search" alt="forks" />
  </a>
  <a href="https://github.com/desorgui/realtime-search/stargazers">
    <img src="https://img.shields.io/github/stars/desorgui/realtime-search" alt="stars" />
  </a>
  <a href="https://github.com/desorgui/realtime-search/issues/">
    <img src="https://img.shields.io/github/issues/desorgui/realtime-search" alt="open issues" />
  </a>
  <a href="https://github.com/desorgui/realtime-search/blob/main/MIT.md">
    <img src="https://img.shields.io/github/license/desorgui/realtime-search.svg" alt="license" />
  </a>
</p>
   
<h4>
    <a href="https://rails-6e4u.onrender.com/">View Demo</a>
  <span> ยท </span>
    <a href="https://github.com/desorgui/realtime-search">Documentation</a>
  <span> ยท </span>
    <a href="https://github.com/desorgui/realtime-search/issues/">Report Bug</a>
  <span> ยท </span>
    <a href="https://github.com/desorgui/realtime-search/issues/">Request Feature</a>
  </h4>

</div>

<!-- TABLE OF CONTENTS -->

# ๐ Table of Contents

- [๐ About the Project](#about-project)
  <!-- - :camera: [Screenshots](#screenshots) -->
  - [๐  Built With](#built-with)
    <!-- - [Tech Stack](#tech-stack) -->
    - [Key Features](#key-features)
  - [๐ Live Demo](#live-demo)
- [๐ป Getting Started](#getting-started)
  - [Setup](#setup)
  - :bangbang: [Prerequisites](#prerequisites)
  <!-- - [Install](#install) -->
  - [Usage](#usage)
  <!-- - [Run tests](#run-tests) -->
  <!-- - [Deployment](#triangular_flag_on_post-deployment) -->
- [๐ฅ Authors](#authors)
<!-- - [๐ญ Future Features](#future-features) -->
- [๐ค Contributing](#contributing)
- [โญ๏ธ Show your support](#support)
- [๐ Acknowledgements](#acknowledgements)
<!-- - [Presentation Video](#presentation-video) -->
<!-- - [โ FAQ](#faq) -->
- [๐ License](#license)

<!-- PROJECT DESCRIPTION -->

# ๐ [realtime-search] <a name="about-project"></a>

<!-- > Describe your project in 1 or 2 sentences. -->

**[realtime-search]** a full-stack web application using Ruby on Rails and plain CSS.
- Integrated the Devise gem for user authentication to ensure secure access to the application.
- Implemented efficient search functionality using Jarowrinkler and PgSearch to provide accurate and relevant search results for users.
- Utilized Turbo Frame Tag, Stimulus, and Hotwire to improve the user experience by providing real-time updates and avoiding full-page reloads.
- Included an analytics feature that lists the most searched terms by users to help them refine their searches accordingly.
- Implemented a mailer feature using Ruby on Rails Action Mailer and the Gmail SMTP server to enable users to receive a regular summary of their search history via email.

<!-- ## :camera: Screenshots <a name="screenshots"></a> -->

## ๐  Built With <a name="built-with"></a>

<!-- ### :space_invader: Tech Stack <a name="tech-stack"></a> -->

<!-- > Describe the tech stack and include only the relevant sections that apply to your project. -->

<details>
  <summary>Tech and Languages</summary>
  <ul>
    <li><a href="https://www.w3schools.com/css/">CSS</a></li>
    <li><a href="https://www.javascript.com/">Javascript</a></li>
    <li><a href="https://www.ruby-lang.org/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
    <li><a href="https://www.postgresql.org/">Postgres</a></li>
    <li><a href="https://github.com/heartcombo/devise">Devise</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### :dart: Key Features <a name="key-features"></a>

<!-- > Describe between 1-3 key features of the application. -->

- **[Real time search]**
- **[Record user search]**
- **[Show user search history]**
- **[Send user search history to your email]**
<!-- - **[key_feature_3]** -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## ๐ Live Demo <a name="live-demo"></a>

- [Real time search link](https://rails-6e4u.onrender.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## ๐ป Getting Started <a name="getting-started"></a>

<!-- > Describe how a new developer could make use of your project. -->

To get a local copy up and running, follow these steps.

### :bangbang: Prerequisites <a name="prerequisites"></a>

In order to run this project you need:

- Git
- Node JS
- ruby
- A code Editor (VS Code, Sublime Text, ...)

<!--
Example command:

```sh
 gem install rails
```
 -->

### Setup <a name="setup"></a>

Clone this repository to your desired folder:

Open Git Bash and run:

```
  cd my-folder
  git clone https://github.com/desorgui/realtime-search.git
  cd realtime-search
```

### :gear: Install <a name="install"></a>

Install this project with: 

<!--
Example command: -->

```
 gem install bundler
 bundler install
```

### :eyes: Usage <a name="usage"></a>

To run the project locally, follow these steps:

- In the terminal run: `rails s`, that will run the server.

- and Open the `http://localhost:3000` in your browser.
<!--
Example command:

```sh
  rails server
```
--->

 ### :test_tube: Run tests <a name="Test"></a>
To run unit and integration tests, run the following on the root project's directory:

Run `rspec spec`

To run Rubocop tests, run the following command:

Run `rubocop --color`

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## ๐ฅ Authors <a name="authors"></a>

<!-- > Mention all of the collaborators of this project. -->

๐ค **Guishny DESOR**

- GitHub: [@desorgui](https://github.com/desorgui)
- Twitter: [@DGuishny](https://twitter.com/DGuishny)
- LinkedIn: [Guishny Desor](https://www.linkedin.com/in/desorguishny)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ๐ค Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## โญ๏ธ Show your support <a name="support"></a>

<!-- > Write a message to encourage readers to support your project -->

If you like this project please give it a โญ๏ธ.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## ๐ Acknowledgments <a name="acknowledgements"></a>

- Special Thanks to everyone who will get time to check this code and suggest any issues.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ๐ License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
