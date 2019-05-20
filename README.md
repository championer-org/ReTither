# ReTither
## To contribute
Fork the this repo then clone from forked repo from your github account 

```git clone https://github.com/your_username/ReTither.git```  

or   
```git clone git@github.com:your_username/ReTither.git```


To start your Phoenix server:

  * Change directory into the cloned repo: `cd ReTither`
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install` 
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Create a remote repo with name upstream, i.e 

```git remote add upstream https://github.com/championer-org/ReTither.git```

 or

```git remote add upstream git@github.com:championer-org/ReTither.git```

Before working on issue ensure your local repo is up-to-date by running

```git pull upstream develop```

When creating a branch ensure it has an issue number

For example issue #3 create user should be have branch name

`3-update-contribution-readme`

Run 

```mix check_lints``` 

and    

```mix test```

Then solve any arising issues before pushing up.

Upon making changes push to the `upstream` remote 

```git push upstream branchname```

Your last commit message should be in the form `Update contribution readme#fixes3`

Then create a pull request if you feel the issue is completed.


## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
