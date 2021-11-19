# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include flask
class flask {

	package { 'python':
		ensure => present,
	}


	package { 'python-pip':
		ensure => present,
		require => Package[python],
	}

        include flask::entrypoint
	include flask::database
	include flask::server

	notice ("installation done")
}
