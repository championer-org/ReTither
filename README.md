# ReTither
## To contribute
Fork the this repo then clone from forked repo from your github account 

```$git clone https://github.com/your_username/ReTither.git```  

or   
```$git clone git@github.com:your_username/ReTither.git```


To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install` 
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

create remote with name upstream i.e 

```$git remote add upstream https://github.com/championer-org/ReTither.git```

 or

```$git remote add upstream git@github.com:championer-org/ReTither.git```

Before working on issue ensure your local repo is upto date by running

```$git pull upstream develop```

When creating a branch ensure it has an issue number

For example issue #26 create user should be have branch name

`3-update-contribution-readme`

Run 

```mix check_lints``` and    ```mix test```  and solve any arising issues before pushing

Upon making changes push to your remote 

```$git push origin branchname```

Your last commit message you be in the form `update contribution readme#fix3`

Then create pull request if you feel the issue is completed


## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
