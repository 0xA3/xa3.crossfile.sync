package  xa3.crossfile.sync;

class FileSystem {
	
	public static function createDirectory( path:String ) {
		#if sys
			FileSystem.createDirectory( path );
		#elseif nodejs
			js.node.Fs.mkdirSync( path );
		#else
			throw "Error: Platform not supported.";
		#end
	}
	
	public static function exists( path:String ) {
		#if sys
			return sys.FileSystem.exists( path );
		#elseif nodejs
			return js.node.Fs.existsSync( path );
		#else
			throw "Error: Platform not supported.";
		#end
	}
	
	public static function readDirectory( path:String ) {
		#if sys
			return sys.FileSystem.readDirectory( path );
		#elseif nodejs
			return js.node.Fs.readdirSync( path );
		#else
			throw "Error: Platform not supported.";
		#end
	}
	
}