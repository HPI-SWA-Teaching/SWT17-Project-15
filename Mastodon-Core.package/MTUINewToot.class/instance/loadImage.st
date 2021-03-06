image
loadImage
	"Open file chooser with a system window UI that has a caption pane and shows only picture files."
	| fc stream |
	fc := FileChooser new.
	fc initializeAsSystemWindowWithCaptionPane.
	fc setCaption: 'Select a picture file' translated.
	fc setSuffixes: {'png' . 'gif' . 'bmp' . 'jpg' . 'jpeg' }.
	stream := fc open.
	^ stream ifNotNil: [(Form fromBinaryStream: stream) asMorph]