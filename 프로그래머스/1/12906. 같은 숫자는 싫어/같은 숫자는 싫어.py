def solution(arr):
    # 정답 배열 초기화(인덱스 0값 필수 포함)
    ans = [arr[0]]
    
    for i in range(1, len(arr)):
        # 앞 원소와 비교해 다르다면, 배열에 추가
        if arr[i] != arr[i-1]:
            ans.append(arr[i])
    
    return ans # 정답 배열 return