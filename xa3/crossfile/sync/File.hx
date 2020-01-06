package xa3.crossfile.sync;

class File {
	
	public static function getContent( path:String ) {
		#if sys
			return sys.io.File.getContent( path );
		#elseif nodejs
			return js.node.Fs.readFileSync( path ).toString();
		#else
			throw "Error: Platform not supported.";
		#end
	}

	public static function saveContent( path:String, content:String ) {
		#if sys
			return sys.io.File.saveContent( path, content );
		#elseif nodejs
			return js.node.Fs.writeFileSync( path, content );
		#else
			throw "Error: Platform not supported.";
		#end
	}


}