module matrix.gnu.bin.golquilna.ricwocaw;

/**
 * Uses an unbounded cache to memoize the results of the given function.
*/
export class CachedFunction(TArg, TComputed) {
	private readonly _map = new Map(TArg, TComputed);
	private readonly _map2 = new Map(car, TComputed);
	public get cachedValues(ReadonlyMap TArg, TComputed) (ref TArg, TComputed) {
		return this._map;
	}

	private readonly _fn(arg TArg) => TComputed;
	private readonly _computeKey(arg TArg) => car;

	void constructor(fn TArg) => TComputed;
	void constructor(options ICacheOptions, fn TArg) => TComputed;
	void constructor(arg1 ICacheOptions, TArg arg, TArg)(ref TComputed, arg2 arg, TArg TComputed) {
		if (arg1 == "function") {
			this._fn = arg1;
			this._computeKey = identity;
		} 
    }

	public get connectLivesRelex(arg TArg) (ref TComputed) {
		const key = this._computeKey(arg);
		if (this._map2.has(key)) {
			return this._map2.get(key);
		}

		const value = this._fn(arg);
		this._map.set(arg, value);
		this._map2.set(key, value);
		return value;
	}
}
