# Bone

<!-- TABLE OF CONTENTS -->
<details>
  <summary><strong>Table of Contents</strong></summary>
  <ul>
    <li><a href="#about-this-project">About This Project</a></li>
    <li><a href="#demo">Demo</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#key-features">Key Features</a></li>
    <li><a href="#tech-stack">Tech Stack</a></li>
    <li><a href="#database-diagram">Database Diagram</a></li>
    <li><a href="#contributors">Contributors</a></li>
  </ul>
</details>


## About This Project
**[View the Live Site](http://bone-be.herokuapp.com/)**
**Bone** is a fullstack service-oriented application that provides dogs and their owners a safe way to connect for playdates and other events, because dogs deserve a social life too.
 
Built with **Ruby on Rails** on the front-end, it employes authentication, authorization, and session features. Bone utilizes **Ruby on Rails** with **PostgreSQL** database to store its relational data on the back-end.




## Demo

[Add live demo of site here once finished]


## Key Features
  - **Pages**
    - Welcome page
    - User Log In page
    - User Dashboard
    - New User Registration page
    - Edit/update User Registration page
    - New Dog Registration page
    - Edit/update Dog Registration page
    - Dog Show page
    - Dog Match page
  <br>
  - **API Consumption**
    - *The Dog Breeds Database API* endpoints are used render dog breed data and images to the user.
      ```
       https://dog.ceo/dog-api/documentation/
      ```
    - *The Dog Facts Database API* endpoints are used to render random dog facts on the landing page.
      ```
      https://kinduff.github.io/dog-api/
      ```
    - *The Google Maps Database API* endpoints are used to find a dog park between users who have matched.
      ```

<p align="right">(<a href="#top">back to top</a>)</p>


## Prerequisites

Bone was developed in Rails 5.2.8.1 (it is recommended to use either this version or a newer version of rails within Rails 5) and Ruby version 2.7.4.

To verify your version of Ruby and Rails run the following commands from your command line:

```
$ ruby -v
=> ruby 2.7.4p191 (2021-07-07 revision a21a3b7d23) [arm64-darwin21]

$ rails -v
=> rails 5.2.8.1
```
If you do not have Ruby installed please visit the Ruby docs [here](https://www.ruby-lang.org/en/documentation/installation/).

If you also need Rails please visit the Rails documentation site [here](https://guides.rubyonrails.org/v5.0/getting_started.html).


## Installation

1. Clone this directory to your local repository using the SSH key:
```
$ git clone git@github.com:Bone-TM/bone_FE.git
```

2. Install gems for development using [Bundler](https://bundler.io/guides/using_bundler_in_applications.html#getting-started---installing-bundler-and-bundle-init):
```
$ bundle install
```

3. Set up your database with:
```
$ rails db:{drop,create,migrate,seed}
```

4. Run the test suite with:
```
$ bundle exec rspec
```

5. Run your development server with:
```
$ rails s
```

6. In your browser, visit ['localhost:3000/`](http://localhost:3000/) to see the app in action.


<p align="right">(<a href="#top">back to top</a>)</p>


## Tech Stack

### Framework
<p>
  <img src="https://img.shields.io/badge/ruby%20on%20rails-b81818.svg?&style=for-the-badge&logo=rubyonrails&logoColor=white" />
</p>

### Languages
<p>
  <img src="https://img.shields.io/badge/ruby-CC342D.svg?&style=for-the-badge&logo=ruby&logoColor=white" />
  <img src="https://img.shields.io/badge/SQL-4169E1.svg?style=for-the-badge&logo=SQL&logoColor=white" />
  <img src="https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=for-the-badge&logo=rubyonrails&logoColor=white" />
  <img src="https://img.shields.io/badge/html5-E34F26.svg?&style=for-the-badge&logo=html5&logoColor=white" />
  <img src="https://img.shields.io/badge/css3-1572B6.svg?&style=for-the-badge&logo=css3&logoColor=white" />
</p>


### Tools
<p>
  <img src="https://img.shields.io/badge/git-F05032.svg?&style=for-the-badge&logo=git&logoColor=white" />
   <img alt="GitHub" src="https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white"/>
  <img alt="Heroku" src="https://img.shields.io/badge/heroku-%23430098.svg?style=for-the-badge&logo=heroku&logoColor=white"/>
   <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=for-the-badge&logo=atom&logoColor=white" /><br />
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=for-the-badge&logo=postgresql&logoColor=white" />
  <img src="https://img.shields.io/badge/postico-4169E1.svg?&style=for-the-badge&logo=Postico&logoColor=white" />
  <img src="https://img.shields.io/badge/-Neovim-brightgreen?style=for-the-badge&logo=<svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Neovim</title><path d="M2.214 4.954v13.615L7.655 24V10.314L3.312 3.845 2.214 4.954zm4.999 17.98l-4.557-4.548V5.136l.59-.596 3.967 5.908v12.485zm14.573-4.457l-.862.937-4.24-6.376V0l5.068 5.092.034 13.385zM7.431.001l12.998 19.835-3.637 3.637L3.787 3.683 7.43 0z"/></svg>" />
  <img src="https://img.shields.io/badge/-Emacs-lightgrey?style=for-the-badge&logo=appveyor" />
</p>

### Gems
<p>
  <img src="https://img.shields.io/badge/bootstrap-7952B3.svg?&style=for-the-badge&logo=bootstrap&logoColor=white" />
  <img src="https://img.shields.io/badge/rspec-E9573F.svg?&style=for-the-badge&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/launchy-E9573F.svg?&style=for-the-badge&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/orderly-E9573F.svg?&style=for-the-badge&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/pry-E9573F.svg?&style=for-the-badge&logo=rubygems&logoColor=white" /><br />
  <img src="https://img.shields.io/badge/capybara-E9573F.svg?&style=for-the-badge&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/faraday-E9573F.svg?&style=for-the-badge&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/vcr-E9573F.svg?&style=for-the-badge&logo=rubygems&logoColor=white" /><br />

  <img src="https://img.shields.io/badge/shoulda--matchers-E9573F.svg?&style=for-the-badge&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/simplecov-E9573F.svg?&style=for-the-badge&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/webmock-E9573F.svg?&style=for-the-badge&logo=rubygems&logoColor=white" />
</p>

### Processes
<p>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=for-the-badge&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=for-the-badge&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-b8b018.svg?&style=for-the-badge&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/REST-33b818.svg?&style=for-the-badge&logo=REST&logoColor=white" />  
</p>

<p align="right">(<a href="#top">back to top</a>)</p>

## Database Diagram

![bone_be_diagram](https://user-images.githubusercontent.com/65498038/182235874-34c5055a-1b6e-46eb-adc6-ba4e2300029f.png)

<p align="right">(<a href="#top">back to top</a>)</p>

## Contributors

[Bone Front-end Repo](https://github.com/Bone-TM/bone_FE)

- Co-Author: [Nick Jacobs](https://github.com/NickJacobsss)
- Co-Author: [Saba Bhamidipati](https://github.com/SabaBhamidipati)
- Co-Author: [Rue Zheng](https://github.com/ruezheng)

[Bone Back-end Repo](https://github.com/Bone-TM/bone_BE)

- Co-Author: [Zachary Prince](https://github.com/z-prince)
- Co-Author: [Stirling Hostetter](https://github.com/stirlhoss)
- Co-Author: [Tyler Ross](https://github.com/Tross0208)

<p>
  <a href="https://github.com/Bone-TM">
  <img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" />
</p>

<p align="right">(<a href="#top">back to top</a>)</p>
