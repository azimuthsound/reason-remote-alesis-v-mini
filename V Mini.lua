function remote_init()
	init_items()
	init_inputs()
	init_outputs()
end

function init_items()

	local items={

		{name="Keyboard"	, input="keyboard"},
		
		{name="Pitch Bend"	, input="value",				min=0, max=16383	},
		{name="Modulation"	, input="value",				min=0, max=127		},

		{name="Knob 1"		, input="value",				min=0,max=127		},
		{name="Knob 2"		, input="value",				min=0,max=127		},
		{name="Knob 3"		, input="value",			    min=0,max=127		},
		{name="Knob 4"		, input="value",			    min=0,max=127		},

		{name="Sustain"		, input="button",				output="value"		},
		
		{name="Pad 1"		, input="button",				output="value"		},
		{name="Pad 2"		, input="button",				output="value"		},
		{name="Pad 3"		, input="button",				output="value"		},
		{name="Pad 4"		, input="button",				output="value"		},

	}
	
	remote.define_items(items)
end

function init_inputs()

	local inputs={

  		{pattern="<100x>? yy zz"	, name="Keyboard"							},

		{pattern="e0 xx yy"			, name="Pitch Bend",	value="y*128 + x"	},
		{pattern="b0 01 xx"			, name="Modulation"							},  				

		{pattern="b0 0e xx" 	    , name="Knob 1",		value="x"			},
		{pattern="b0 0f xx" 	    , name="Knob 2",		value="x"			},
		{pattern="b0 10 xx"			, name="Knob 3",		value="x"			},
		{pattern="b0 11 xx"			, name="Knob 4",		value="x"			},

		{pattern="b0 40 ?<???x>"	, name="Sustain",		value="x"			},  				

		{pattern="b0 14 ?<???x>"	, name="Pad 1",			value="x"			},
		{pattern="b0 15 ?<???x>"	, name="Pad 2",			value="x"			},
		{pattern="b0 16 ?<???x>"	, name="Pad 3",			value="x"			},
		{pattern="b0 17 ?<???x>"	, name="Pad 4",			value="x"			},

	}
	remote.define_auto_inputs(inputs)
end

function init_outputs()

	local outputs={
		
		{name="Sustain",	pattern="b0 40 0<000x>"								},
		
		{name="Pad 1",		pattern="b0 14 0<000x>"								},
		{name="Pad 2",		pattern="b0 15 0<000x>"								},
		{name="Pad 3",		pattern="b0 16 0<000x>"								},
		{name="Pad 4",		pattern="b0 17 0<000x>"								},

	}
	remote.define_auto_outputs(outputs)
end