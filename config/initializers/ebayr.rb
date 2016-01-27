require 'ebayr'

production = false

if production == true
  Ebayr.dev_id = "d09913ab-92c4-4572-84eb-04451aff881b"

  # This is only needed if you want to retrieve user tokens
  Ebayr.authorization_callback_url = "https://ebay-test.herokuapp.com/"

  Ebayr.auth_token = "AgAAAA**AQAAAA**aAAAAA**8bv0VQ**nY+sHZ2PrBmdj6wVnY+sEZ2PrA2dj6AGk4KkD5eAqQudj6x9nY+seQ**dvICAA**AAMAAA**VrZd/wxG50iWTmLyLpoqXGuE5T+lw1o3EnXyS+WrXZUQ+vRjLtWQhBO/zs0Y/om6LETj3NOjHYzHNEl5T0dhxQ9/jeu7S7vpShwtEhE05nyd2CxvyqiAQ2K7q9I/1pUUHy8cNJUpWTslsBKydBY5CQVyahNTFfQrahQzYrrpcgg5ES1PdTEz5AIqws6gWt+fXT4Tp4n8ZNn3UC8F1q4U6+0xhRTlnUMaizVvU05h707hsmhNzaC7R3yqBqf4y9C2uqfhDekHqu01eSEDudLEXNshVQOP1/+EcGcnIR61HXKlJUEKuu9b20V8x8xLHmHLywiOl7ILVf9lC8fJtHRYXsgXlSrMgTpWeO5uDtmGYL1Ig3uF3lEkiquObB30nM2QGBMmgXQ23YDGGnNbsgrACUhVewtwupFBEpUiLseeTExApdN9Z7BDJzHr6cS/Uz+ds0e0YAbkdCxGRG1Lj531T1O+HKpnIJ5uimejrNDjRkN0+75nlkf88RAKoBTA7qe0+rmaUVOmPU+/M9dwMsv2WZlRYnswpDaQ8HDGs0jJ9TIL/NYTZ+dlrylQL3zOvPTnD21KyObqJyCQfery3AOQS89FPaOup1oWjVock48NT3YuQ3WlqUkpK62cVv81QeVuhW+G0Yrdjbp+tF2a80TIKQQLX+SiOBXpNg2W7FM19V9Ojf8UIalDNYR/8Lk/S0/KSl0NQq4JHtPzHXd6PvcMBi5/gfXetkKMPDHcnOcBHr0fP6H2+iN4O62p4z0LdX2f"

  Ebayr.app_id = "National-7535-4e40-b08e-867896f8196f"

  Ebayr.cert_id = "9d556d08-765d-49fc-aa0d-ab8a55c785ce"

  Ebayr.ru_name = "National_Parks_-National-7535-4-dohvjnjv"

  # Set this to true for testing in the eBay Sandbox (but remember to use the
  # appropriate keys!). It's true by default.
  Ebayr.sandbox = false
else
  Ebayr.dev_id = "d09913ab-92c4-4572-84eb-04451aff881b"

  # This is only needed if you want to retrieve user tokens
  Ebayr.authorization_callback_url = "https://ebay-test.herokuapp.com/"

  Ebayr.auth_token = "AgAAAA**AQAAAA**aAAAAA**eGnBVQ**nY+sHZ2PrBmdj6wVnY+sEZ2PrA2dj6wFk4GhDZmEqQmdj6x9nY+seQ**SIcDAA**AAMAAA**Jnl+RmIsFB/fCstsS0kntE/1EhutVtmgiHyu18sftvui3+DtJP62EZJ59A+W5yQujeEQE89WixPuKDhyUk9OOq7WRxNunLcArW2nVcTVCW+rmJF1ejErDGu80DDREo5QnpLv/piVT5+ZkbQuTYBzGcQrhTHNjUfMrsNhUsyYu56H1L7qJbis7QssBjWFzq3/jY05pUX6ebqPH/egfVDryYZqXJOXIIUeNulHH+rWvhjrrujKJkMZ72iST0GSD/NbjAkK41Pgl6jp9Z1wFBiFSRCShAyAz8QGVeW8gW8bnjIOs8Dd1eqzCEC1wZbfgriZRUkEmWahiVrEhU6P1J2keWNTH3e5aUEF5pAJA34qHTOn7gBQm3Vxjp6bpvDXjNPV0oisA2RQqUt6hqFROj5lKykeEaWu/O96h7taNzsVBrScV1cD5ydQIIuokgPXUkFxe/asBQxIP15+H/MV07Jpt3IwlVe8HuciFfaOu8TzhXNzo7og30TZTCdM51+v1UJCEiMO4u/1nqkvnR3BDE1KiaPXmTTnsVnc9pUliCC0kiJetTZtGpLr9EAiwJFmEvhYQVVjV5YaavLcZVc6i+Bk3n4LhHeLlN1wWGwwz+RRMInFWUoFNKrNf5vcCDgUWCJOxWHT1ExEGPEgjyo3LdXuMqMjODNhwDeZ1SEEbEt2Lmz/CGdRf8Ysj2lSRwmiPFPRQDIsGZbq6QhfQ8/tqLw8otu9zyTp0MVBFzMCH01M2NS2IQVB4N31FafXsocAHWwK"

  Ebayr.app_id = "National-1f88-4e12-a1ca-32c11867a9ca"

  Ebayr.cert_id = "e7d1e825-081d-4f36-bdb0-344bafb5d4e6"

  Ebayr.ru_name = "National_Parks_-National-1f88-4-pgcdo"

  # Set this to true for testing in the eBay Sandbox (but remember to use the
  # appropriate keys!). It's true by default.
  Ebayr.sandbox = true
end

