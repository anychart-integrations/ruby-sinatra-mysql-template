[<img src="https://cdn.anychart.com/images/logo-transparent-segoe.png?2" width="234px" alt="AnyChart - Robust JavaScript/HTML5 Chart library for any project">](https://anychart.com)
# Ruby basic template

This example shows how to use Anychart library with the Ruby programming language and MySQL database.

## Running

To use this sample you must have Ruby installed, as described at [Ruby installation page](https://www.ruby-lang.org/en/documentation/installation/); MySQL installed and running, if not please check out [MySQL download page](https://dev.mysql.com/downloads/installer/) and follow [these instructions](http://dev.mysql.com/doc/refman/5.7/en/installing.html);


To check your installations, run the following command in the command line:
```
$ ruby -v
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-linux] # sample output
$ mysql --version
mysql  Ver 14.14 Distrib 5.5.52, for debian-linux-gnu (x86_64) using readline 6. # sample output
```

To start this example run commands listed below.

Clone the repository from github.com:
```
$ git clone git@github.com:anychart-integrations/ruby-sinatra-mysql-template.git
```

Navigate to the repository folder:
```
$ cd ruby-sinatra-mysql-template
```

Install dependencies:
```
$ gem install sinatra
$ gem install mysql2 --platform=ruby
```

Set up MySQL database, use -u -p flags to provide username and password:
```
$  mysql < database_backup.sql
```

Run example:
```
$ ruby main.rb
```

Open browser at http://localhost:4567/

## Workspace
Your workspace should look like:
```
ruby-sinatra-mysql-template/
    lib/
    public/
        css/
            style.css       # css style
    views/
        main.erb            # html template
    database_backup.sql     # MySQL database dump
    main.rb                 # main Ruby code
    README.md
    LICENSE

```

## Technologies
Language - [Ruby](https://www.ruby-lang.org)<br />
Database - [MySQL](https://www.mysql.com/)<br />
Web framework - [sinatra](http://www.sinatrarb.com/)<br />

## Further Learning
* [Documentation](https://docs.anychart.com)
* [JavaScript API Reference](https://api.anychart.com)
* [Code Playground](https://playground.anychart.com)
* [Technical Support](https://anychart.com/support)

## License
[© AnyChart.com - JavaScript charts](http://www.anychart.com). Released under the [Apache 2.0 License](https://github.com/anychart-integrations/ruby-sinatra-mysql-template/blob/master/LICENSE).
