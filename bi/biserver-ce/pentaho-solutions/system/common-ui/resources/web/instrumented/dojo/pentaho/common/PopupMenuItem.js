/* automatically generated by JSCoverage - do not edit */
try {
  if (typeof top === 'object' && top !== null && typeof top.opener === 'object' && top.opener !== null) {
    // this is a browser window that was opened from another window

    if (! top.opener._$jscoverage) {
      top.opener._$jscoverage = {};
    }
  }
}
catch (e) {}

try {
  if (typeof top === 'object' && top !== null) {
    // this is a browser window

    try {
      if (typeof top.opener === 'object' && top.opener !== null && top.opener._$jscoverage) {
        top._$jscoverage = top.opener._$jscoverage;
      }
    }
    catch (e) {}

    if (! top._$jscoverage) {
      top._$jscoverage = {};
    }
  }
}
catch (e) {}

try {
  if (typeof top === 'object' && top !== null && top._$jscoverage) {
    _$jscoverage = top._$jscoverage;
  }
}
catch (e) {}
if (typeof _$jscoverage !== 'object') {
  _$jscoverage = {};
}
if (! _$jscoverage['dojo/pentaho/common/PopupMenuItem.js']) {
  _$jscoverage['dojo/pentaho/common/PopupMenuItem.js'] = [];
  _$jscoverage['dojo/pentaho/common/PopupMenuItem.js'][1] = 0;
  _$jscoverage['dojo/pentaho/common/PopupMenuItem.js'][3] = 0;
  _$jscoverage['dojo/pentaho/common/PopupMenuItem.js'][5] = 0;
  _$jscoverage['dojo/pentaho/common/PopupMenuItem.js'][13] = 0;
  _$jscoverage['dojo/pentaho/common/PopupMenuItem.js'][14] = 0;
}
_$jscoverage['dojo/pentaho/common/PopupMenuItem.js'].source = ["dojo<span class=\"k\">.</span>provide<span class=\"k\">(</span><span class=\"s\">\"pentaho.common.PopupMenuItem\"</span><span class=\"k\">);</span>","","dojo<span class=\"k\">.</span>require<span class=\"k\">(</span><span class=\"s\">\"pentaho.common.MenuItem\"</span><span class=\"k\">);</span>","","dojo<span class=\"k\">.</span>declare<span class=\"k\">(</span>","    <span class=\"s\">\"pentaho.common.PopupMenuItem\"</span><span class=\"k\">,</span>","    <span class=\"k\">[</span>dijit<span class=\"k\">.</span>PopupMenuItem<span class=\"k\">,</span> pentaho<span class=\"k\">.</span>common<span class=\"k\">.</span>MenuItem<span class=\"k\">],</span>","    <span class=\"k\">{</span>","    ","        baseClass<span class=\"k\">:</span> <span class=\"s\">\"pentaho-menuitem\"</span><span class=\"k\">,</span>","","\t\t_setSelected<span class=\"k\">:</span> <span class=\"k\">function</span><span class=\"k\">(</span>selected<span class=\"k\">)</span><span class=\"k\">{</span>","            <span class=\"k\">if</span><span class=\"k\">(!</span><span class=\"k\">this</span><span class=\"k\">.</span>disabled<span class=\"k\">)</span> <span class=\"k\">{</span> ","                dojo<span class=\"k\">.</span>toggleClass<span class=\"k\">(</span><span class=\"k\">this</span><span class=\"k\">.</span>domNode<span class=\"k\">,</span> <span class=\"s\">\"pentaho-menuitem-hover\"</span><span class=\"k\">,</span> selected<span class=\"k\">);</span>","            <span class=\"k\">}</span>","        <span class=\"k\">}</span>","        ","\t<span class=\"k\">}</span>","<span class=\"k\">);</span>"];
_$jscoverage['dojo/pentaho/common/PopupMenuItem.js'][1]++;
dojo.provide("pentaho.common.PopupMenuItem");
_$jscoverage['dojo/pentaho/common/PopupMenuItem.js'][3]++;
dojo.require("pentaho.common.MenuItem");
_$jscoverage['dojo/pentaho/common/PopupMenuItem.js'][5]++;
dojo.declare("pentaho.common.PopupMenuItem", [dijit.PopupMenuItem, pentaho.common.MenuItem], {baseClass: "pentaho-menuitem", _setSelected: (function (selected) {
  _$jscoverage['dojo/pentaho/common/PopupMenuItem.js'][13]++;
  if ((! this.disabled)) {
    _$jscoverage['dojo/pentaho/common/PopupMenuItem.js'][14]++;
    dojo.toggleClass(this.domNode, "pentaho-menuitem-hover", selected);
  }
})});