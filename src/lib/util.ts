function double(s: string): string {
  return s
    .split("")
    .map((c) => c + c)
    .join("");
}

export { double };
