# README
![Screenshot 2022-12-09 at 18-56-16 Edit your own logo](https://user-images.githubusercontent.com/62907095/206813853-1cecefe1-c897-4810-b09e-e84b858d9d3a.png)

- Docker Instructions:
  - Install [Docker Desktop](https://www.docker.com/)
  - Build the image (only needs to be done once)
    - ``` docker build -t gate_exchange . ```
  - Run the container on localhost:3000
    - ```docker run -d -p 3000:3000 --name gate_exchange gate_exchange```
  - Migrate and Seed DB:
    - ```docker exec gate_exchange rails db:migrate```
    - ```docker exec gate_exchange rails db:seed```


- Local Dev Instructions:
```
  bundle config set --local without production
  bundle install
  rails db:migrate
  rails db:seed
```
- Project Kanban Board Link: https://github.com/users/jpaints3/projects/1


## UI template Credits
  - Landing Page Template https://cruip.com/demos/solid/
  - Courses grid Ui https://codepen.io/oliviale/pen/bOWqbj
