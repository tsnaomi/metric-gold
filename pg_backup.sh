# delete backups that are more than 10 days old
find "$(pwd)/pg_backups" -mtime +10 -exec rm {} \;

# back up the metric-gold database
fn="$(pwd)/pg_backups/metric-gold-$(date +%d%b%Y-%H:%M)"
pg_dump finnsyll > $fn
