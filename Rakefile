namespace 'doc' do
    XSLTPROC='/usr/bin/xsltproc'
    XSL_BASE='/usr/share/freemind/accessories'
    TOHTML_XSL=File.join(XSL_BASE,'toxhtml.xsl')

    rule '.mm.html' => [
	proc{|t| t.sub(/\.mm\.html$/,'.mm')},
	XSLTPROC,TOHTML_XSL
    ] do |t|
	mkdir t.name 
	sh "#{XSLTPROC} --output #{File.join(t.name,'index.html')} #{TOHTML_XSL} #{t.source}"
	cp Dir[File.join(XSL_BASE,'*.png')],t.name
	cp File.join(XSL_BASE,'treestyles.css'),t.name
	cp File.join(XSL_BASE,'marktree.js'),t.name
    end

    desc 'Build the developer documentation'
    task :developer => ['doc/live-workbench.mm.html']
end

desc 'Remove any generated products'
task :clean do
    rm_rf 'doc/live-workbench.mm.html'
end
