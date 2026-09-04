function dumpStrumline(state) {
    var pStrum = state.playerStrumline;
    if (pStrum == null) return "No playerStrumline";
    var res = "playerStrumline.x = " + pStrum.x + "\n";
    if (pStrum.members != null) {
        res += "members length: " + pStrum.members.length + "\n";
        for (i in 0...pStrum.members.length) {
            var m = pStrum.members[i];
            if (m != null) res += "  member[" + i + "]: x=" + m.x + " y=" + m.y + " class=" + Type.getClassName(Type.getClass(m)) + "\n";
        }
    }
    if (pStrum.strumlineNotes != null) {
        res += "strumlineNotes length: " + pStrum.strumlineNotes.length + "\n";
        if (pStrum.strumlineNotes.members != null) {
            for (i in 0...pStrum.strumlineNotes.members.length) {
                var m = pStrum.strumlineNotes.members[i];
                if (m != null) res += "  strumlineNote[" + i + "]: x=" + m.x + " y=" + m.y + " class=" + Type.getClassName(Type.getClass(m)) + "\n";
            }
        }
    }
    return res;
}
