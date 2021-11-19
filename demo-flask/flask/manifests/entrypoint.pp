# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include flask::entrypoint
class flask::entrypoint {

        exec { 'install flask':
		path => '/usr/bin:/usr/sbin:/bin',
                command => 'pip install flask',
                require => Package[python-pip],
        }

#	file { '/etc/puppetlabs/code/modules/flask/files/app.py':
#		mode => '0777',
#		source => 'puppet:///modules/flask/files/app.py',
#	}

#        exec { 'export my entrypoint to flask':
#                path => '/usr/bin:/usr/sbin:/bin',
#                command => 'bash -c "export FLASK_APP=/etc/puppetlabs/code/modules/flask/files/app.py"',
#		require => File['/etc/puppetlabs/code/modules/flask/files/app.py'],
#        }
#        exec { 'export env':
#                path => '/usr/bin:/usr/sbin:/bin',
#                command => 'bash -c "export FLASK_ENV=development"',
#        }


#        exec { 'run':
#                path => '/usr/bin:/usr/sbin:/bin',
#		cwd => '/etc/puppetlabs/code/modules/',
#                command => 'flask run -h localhost -p 3000',
#        }



	exec { "locate app.py":
		cwd => '/etc/puppetlabs/code/modules/flask/manifests',
		path => '/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/bin',
		environment => ["FLASK_APP=app.py", "FLASK_ENV=develoment"],
		command => "flask run -h localhost -p 5103",
	}


}
