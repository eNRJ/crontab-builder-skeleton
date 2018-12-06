# crontab-builder-skeleton

crontab-builder-skeleton provides a default project structure to version your crontab and make it depends on your current environment variables (local, stagging, prod...).


# Usage

Define your environment variables in .env.dist file, then just run `cp .env.dist .env`.
Fill crontab file with your cron jobs (you can use your newly defined environment variables in it).
Finally, simply run `./build_crontab.sh`. And there you have it, if you check your crontab (with command `crontab -l`) you will see your cron jobs with your environment variables.

Please notice that a backup of your previous crontab is generated at path `/tmp/crontab_backup` and that the builder command uses default environment variable `USER` to know who to assign the new crontab to, so make sure it's defined.