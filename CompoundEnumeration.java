static class CompoundEnumeration<T> implements Enumeration<T> {
	private final Iterator<Supplier<Enumeration<T>>> enumerationSupplierIterator;
	private Enumeration<T> currentEnumeration;

	CompoundEnumeration(Iterator<Supplier<Enumeration<T>>> enumerationSupplierIterator) {
		this.enumerationSupplierIterator = enumerationSupplierIterator;
	}

	@Override
	public boolean hasMoreElements() {

		while (currentEnumeration == null || !currentEnumeration.hasMoreElements()) {
			if (enumerationSupplierIterator.hasNext()) {
				currentEnumeration = enumerationSupplierIterator.next().get();
			} else {
				return false;
			}
		}
		return true;
	}

	@Override
	public T nextElement() {
		return currentEnumeration.nextElement();
	}
}
