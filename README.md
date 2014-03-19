# GTD Todo API Ruby client
[Blog post](http://blog.apiary.io/2014/03/06/Surfing-API/) companion API client 

Client written in Ruby using excellent [HyperResource](https://github.com/gamache/hyperresource) library. Read [its paper](http://petegamache.com/wsrest2014-gamache.pdf)!

- API documentation at Apiary: <http://docs.gtdtodoapi.apiary.io>
- Run the client: `$ bundle install` and `$ ruby client.rb`
- Server implementatation: <https://github.com/zdne/todoapi>

## Design Note
The client shares Todo API domain data model defined in `domain_model.rb`. Use `git clone --recursive` to get the domain definition when cloning this repo. 

## Contribute
Fork & Pull Request.

## License
MIT License. See the [LICENSE](LICENSE) file.
