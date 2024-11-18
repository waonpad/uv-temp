def main():
    print("Hello from workspace!")  # noqa: T201

    a: str = 1

    print(a)  # 型エラー用  # noqa: T201

    print(1)  # リントエラー用


    return 0  # フォーマット用


if __name__ == "__main__":
    main()
