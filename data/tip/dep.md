# dep

## Usage

    $ dep init

    $ dep ensure
    $ dep ensure -examples
    $ dep ensure -add github.com/pkg/errors

    update all your dependencies at once
    $ dep ensure --update

    $ dep ensure -update github.com/some/project github.com/other/project

    $ dep status
    $ dep status -dot | dot -T png | display
    $ dep status -dot | dot -T png -o status.png; display status.png
