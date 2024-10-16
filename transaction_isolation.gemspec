# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "transaction_isolation/version"

Gem::Specification.new do |s|
  s.name        = "openstax_transaction_isolation"
  s.version     = TransactionIsolation::VERSION
  s.authors     = ["Dante Soares", "Piotr 'Qertoip' Włodarek"]
  s.email       = []
  s.homepage    = "https://github.com/openstax/transaction_isolation"
  s.summary     = %q{Set transaction isolation level in the ActiveRecord in a database agnostic way.}
  s.description = %q{Set transaction isolation level in the ActiveRecord in a database agnostic way.
Works with MySQL, PostgreSQL and SQLite as long as you are using new adapters mysql2, pg or sqlite3.
Supports all ANSI SQL isolation levels: :serializable, :repeatable_read, :read_committed, :read_uncommitted.}
  s.required_ruby_version = '>= 3'

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f == 'd' || f.start_with?('test') }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "activerecord", ">= 6"
end
