from mpd import MPDClient
c = MPDClient()
c.connect('localhost', 6600)

song_id = int(c.status()['songid'])
print "Removing song {0} from playlist".format(song_id)

c.deleteid(song_id)
