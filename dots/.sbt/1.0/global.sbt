import org.ensime.EnsimeKeys._
import sbt.errorssummary.Plugin.autoImport._

resolvers += "Artima Maven Repository" at "http://repo.artima.com/releases"

cancelable in Global := true

ensimeIgnoreMissingDirectories in ThisBuild := true
