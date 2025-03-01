const returnValue = data.returnValue;
const outputs = {
  value_null: null,
  value_undefined: undefined,
  value_true: true,
  value_false: false,
  emptyString: "",
  emptyArray: [],
  emptyObject: {},
};

return outputs[returnValue];
