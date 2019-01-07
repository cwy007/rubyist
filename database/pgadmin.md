## Error when opening pgAdmin 4 on mac
I removed the local directory hidden and resolved:

```ruby
$ cd ~
$ rm -r .pgadmin/
```

Note: macOS Sierra (10.12.6) and pgAdmin 4-1.6. Also you are going to loose configuration data like database list tree, et al.

The Databases will remain intact since you are modifying/deleting PgAdmin related data not any of Postgresql itself.