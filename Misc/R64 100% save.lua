local args = {
    [1] = {
        [1] = "42069000000",
        [2] = "121111111111111111111",
        [3] = "1111111111111121111111111111111111111110",
        [4] = "5",
        [5] = "1111111111111111111111111111111111111111111111111111111111111111",
        [6] = "420699999",
        [7] = "1000",
        [8] = "0,",
        [9] = "0,",
        [10] = 3
    }
}

workspace:WaitForChild("share"):WaitForChild("save"):FireServer(unpack(args))