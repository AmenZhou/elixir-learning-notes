# Install in CentOS

* Download the latest Erlang

    `wget https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_19.2~centos~6_amd64.rpm`

* Install the downloaded rpm package with dependencies

   `sudo yum --nogpgcheck localinstal esl-erlang_19.2~centos~6_amd64.rpm`

* Install Elixir
   
   `git clone https://github.com/elixir-lang/elixir.git`
   
   `make clean test`
   
   Then export the iex to PATH
