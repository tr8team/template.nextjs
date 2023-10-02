import { describe, expect, test } from "bun:test";
import { double } from "../../src/lib/util";

describe("double", () => {
  test("no characters", () => {
    expect(double("")).toBe("");
  });

  const theory: [string, string][] = [
    ["hello", "hheelllloo"],
    ["water", "wwaatteerr"],
  ];

  theory.forEach(([input, expected]) => {
    test("it should double all characters", () => {
      expect(double(input)).toBe(expected);
    });
  });
});
