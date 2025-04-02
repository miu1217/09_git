"""

Python Escape 11번 문제

문자열 enctypted를 2칸씩 건너뛰며 모든 문자를 처리했을 때의 출력값을 입력하세요.

"""


encrypted = "h3e2l4l6o1w5o7r9l8d0"
def decrypt_message(s):
    result = ""
    for i in range(0, len(s), 2):
        result += s[i]
    return result

output = decrypt_message(encrypted)
print("정답:", output)