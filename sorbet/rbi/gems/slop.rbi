# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/slop/all/slop.rbi
#
# slop-3.6.0

class Slop
  def [](key); end
  def add_callback(label, &block); end
  def autocreate(items, index); end
  def banner(banner = nil); end
  def banner=(banner); end
  def build_option(objects, &block); end
  def clean(object); end
  def command(command, options = nil, &block); end
  def commands; end
  def commands_to_help; end
  def config; end
  def description(desc = nil); end
  def description=(desc); end
  def each(&block); end
  def execute_multiple_switches(option, argument, items, index); end
  def execute_option(option, argument, index, item = nil); end
  def extract_long_flag(objects, config); end
  def extract_option(flag); end
  def extract_short_flag(objects, config); end
  def fetch_command(command); end
  def fetch_option(key); end
  def get(key); end
  def help; end
  def initialize(config = nil, &block); end
  def method_missing(method, *args, &block); end
  def missing; end
  def on(*objects, &block); end
  def opt(*objects, &block); end
  def option(*objects, &block); end
  def options; end
  def parse!(items = nil, &block); end
  def parse(items = nil, &block); end
  def present?(*keys); end
  def process_item(items, index, &block); end
  def respond_to_missing?(method_name, include_private = nil); end
  def run(callable = nil, &block); end
  def self.optspec(string, config = nil); end
  def self.parse!(items = nil, config = nil, &block); end
  def self.parse(items = nil, config = nil, &block); end
  def separator(text); end
  def strict?; end
  def to_h(include_commands = nil); end
  def to_hash(include_commands = nil); end
  def to_s; end
  include Enumerable
end
class Slop::Option
  def accepts_optional_argument?; end
  def argument_in_value; end
  def argument_in_value=(arg0); end
  def call(*objects); end
  def config; end
  def count; end
  def count=(arg0); end
  def description; end
  def expects_argument?; end
  def help; end
  def initialize(slop, short, long, description, config = nil, &block); end
  def inspect; end
  def key; end
  def long; end
  def short; end
  def to_s; end
  def types; end
  def value; end
  def value=(new_value); end
  def value_to_float(value); end
  def value_to_integer(value); end
  def value_to_range(value); end
end
class Slop::Commands
  def [](key); end
  def arguments; end
  def banner(banner = nil); end
  def banner=(arg0); end
  def commands; end
  def config; end
  def default(config = nil, &block); end
  def each(&block); end
  def execute_arguments!(items); end
  def execute_global_opts!(items); end
  def get(key); end
  def global(config = nil, &block); end
  def help; end
  def initialize(config = nil, &block); end
  def inspect; end
  def on(command, config = nil, &block); end
  def parse!(items = nil); end
  def parse(items = nil); end
  def present?(key); end
  def to_hash; end
  def to_s; end
  include Enumerable
end
class Slop::Error < StandardError
end
class Slop::MissingArgumentError < Slop::Error
end
class Slop::MissingOptionError < Slop::Error
end
class Slop::InvalidArgumentError < Slop::Error
end
class Slop::InvalidOptionError < Slop::Error
end
class Slop::InvalidCommandError < Slop::Error
end
