# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include flask::server
class flask::server {

	package { 'gunicorn':
		ensure => present,
	}

}
