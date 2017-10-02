node default {

package {'httpd':
	ensure	=>	'present',
}
file	{'/var/ww/html/index.html':
	ensure	=>	'present',
	content	=>	'Coming from github',
	require	=>	Package['httpd'],
	}
service	{'httpd':
	ensure	=>	'running',
	enable	=>	True,
	require	=>	Package['httpd'],
}
}
