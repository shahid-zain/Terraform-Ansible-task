#! /bin/bash
sudo cp /tmp/moodle.conf /etc/apache2/sites-available/
sudo ansible-playbook /tmp/moodle.yaml
sudo chown -R www-data:www-data /var/www/html/moodle/
sudo chmod -R 755 /var/www/html/moodle/
sudo chown www-data /var/www/html/moodledata

sudo a2enmod rewrite
sudo a2ensite moodle.conf
sudo systemctl restart apache2

