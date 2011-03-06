guard 'shell' do
  watch(%r{^public/sass/(.*)\.s[ac]ss}){|m| `compass compile` }
end

guard 'livereload', :api_version => '1.5' do
  watch(%r{app/.+\.(erb|haml)})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
end
