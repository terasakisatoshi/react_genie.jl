# Backend + Frontend integration

## Usage

Initialize backend

```console
$ cd backend
$ julia --project=@. -e 'using Pkg; Pkg.instantiate()'
$ ./bin/server
```

Initialize frontend

```console
$ cd frontend
$ yarn
$ yarn start
```

Then open http://localhost:3000/ from your web browser
