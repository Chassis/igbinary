# A Chassis extension to install and configure igbinary on your Chassis server
class igbinary (
	$config,
	$path        = '/vagrant/extensions/igbinary',
	$php_version  = $config[php]
) {
	# Install the gmp package
	if ( ! empty( $config[disabled_extensions] ) and 'chassis/igbinary' in $config[disabled_extensions] ) {
		$package = absent
		$file    = absent
	} else {
		$package = latest
		$file    = 'present'
	}

	package { "php${php_version}-igbinary":
		ensure  => $package,
		require => Package["php${php_version}-fpm", "php${php_version}-cli"],
	}

}
