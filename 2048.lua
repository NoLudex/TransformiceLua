---@diagnostic disable: undefined-global, lowercase-global
local config = {
    mapCode = '<C><P F="3" MEDATA="6,1;;;;-0;0:::1-"/><Z><S><S T="6" X="400" Y="380" L="800" H="40" P="0,0,0.3,0.2,0,0,0,0"/><S T="6" X="700" Y="150" L="120" H="40" P="0,0,0.3,0.2,0,0,0,0"/><S T="12" X="99" Y="165" L="110" H="205" P="0,0,0.3,0.2,0,0,0,0"/><S T="9" X="620" Y="245" L="40" H="230" P="0,0,0,0,0,0,0,0"/><S T="12" X="89" Y="365" L="79" H="68" P="0,0,0.3,0.2,0,0,0,0"/><S T="13" X="54" Y="347" L="16" P="0,0,0.3,0.2,0,0,0,0"/><S T="12" X="402" Y="166" L="215" H="205" P="0,0,0.3,0.2,0,0,0,0"/><S T="12" X="50" Y="70" L="10" H="10" P="0,0,0.3,0.2,0,0,0,0"/></S><D><P X="106" Y="401" T="110" P="0,0"/><P X="760" Y="361" T="111" P="0,0"/><P X="86" Y="360" T="193" P="0,0"/><P X="744" Y="360" T="211" P="0,0"/><P X="656" Y="404" T="110" P="0,0"/><P X="115" Y="360" T="12" P="0,0"/><P X="164" Y="302" T="108" P="0,0"/><P X="720" Y="386" T="1" P="0,0"/><P X="228" Y="280" T="41" P="0,0"/><P X="727" Y="154" T="5" P="0,0"/><P X="655" Y="135" T="2" P="0,0"/><P X="28" Y="361" T="3" P="0,0"/><P X="165" Y="360" T="303" P="0,0"/><P X="618" Y="409" T="87" P="0,0"/><P X="560" Y="360" T="4" P="0,0"/><P X="574" Y="364" T="11" P="0,0"/><F X="700" Y="125"/><DS X="400" Y="345"/></D><O/><L/></Z></C>',
    mapName = "2048",
    ui = {
        boardX = 300,
        boardY = 70,
        cellSize = 30,
        gap = 16,
        margin = 16,
        statsX = 50,
        statsY = 160,
        statsW = 100,
        statsH = 75,
        actionsPanelX = 50,
        actionsPanelY = 70,
        resetButtonX = 50,
        resetButtonY = 250,
        resetButtonW = 100
    }
}

local translations = {
    en = {
        statistics = "Statistics",
        score = "Score",
        moves = "Moves",
        maxTile = "Max Tile",
        action = "Action",
        reset = "RESET",
        victory = "VICTORY!",
        victoryMessage = "You reached 2048!",
        finalScore = "Final Score",
        newGame = "New Game",
        gameOver = "GAME OVER!",
        noMoves = "No moves available",
        clickToRestart = "Click to restart",
        gameReset = "Game reset for",
        playerWon = "Player",
        wonTime = "won! Time:",
        ms = "ms",
        gameResetCommand = "Game reset for",
        byOrganizer = "by organizer command",
        boardInitialized = "Board initialized for player",
        withSavedData = "with saved data",
        noSavedData = "No saved data for player",
        creatingNewBoard = "creating new board",
        gameResetFor = "Game reset for player",
        collects2048 = "collects 2048 in",
        seconds = "seconds",
        welcomeTitle = "Welcome!",
        welcomeSubtitle = "This is a custom script inspired by 2048 for Transformice.",
        welcomeGoal = "Goal: merge equal tiles to reach 2048.",
        welcomeControls = "Controls: use the arrow buttons in the 'Actions' window.",
        welcomeGoodLuck = "Good luck!"
    },
    ru = {
        statistics = "СТАТИСТИКА",
        score = "Очки",
        moves = "Ходы",
        maxTile = "Макс. плитка",
        action = "Действия",
        reset = "СБРОС",
        victory = "ПОБЕДА!",
        victoryMessage = "Вы достигли 2048!",
        finalScore = "Финальный счет",
        newGame = "Новая игра",
        gameOver = "ИГРА ОКОНЧЕНА!",
        noMoves = "Нет доступных ходов",
        clickToRestart = "Нажмите для перезапуска",
        gameReset = "Игра сброшена для",
        playerWon = "Игрок",
        wonTime = "выиграл! Время:",
        ms = "мс",
        gameResetCommand = "Игра сброшена для",
        byOrganizer = "по команде организатора",
        boardInitialized = "Инициализирована доска для игрока",
        withSavedData = "с сохраненными данными",
        noSavedData = "Нет сохраненных данных для игрока",
        creatingNewBoard = "создается новая доска",
        gameResetFor = "Игра сброшена для игрока",
        collects2048 = "собирает 2048 за",
        seconds = "секунд",
        welcomeTitle = "Добро пожаловать!",
        welcomeSubtitle = "Это скрипт по принципу 2048 для Transformice.",
        welcomeGoal = "Цель: соединяйте одинаковые плитки, чтобы получить 2048.",
        welcomeControls = "Управление: используйте кнопки стрелок в окне \"Действия\".",
        welcomeGoodLuck = "Удачи!"
    }
}

local tileSettings = {
    [0] = {
        backgroundColor = 0xcdc1b4,
        fontColor = 0xcdc1b4,
        borderColor = 0xcdc1b4,
        score = 0,
    },
    [2] = {
        backgroundColor = 0xeee4da,
        fontColor = 0x776e65,
        borderColor = 0xFFFFFF,
        score = 0,
    },
    [4] = {
        backgroundColor = 0xede0c8,
        fontColor = 0x776e65,
        borderColor = 0xFFFFFF,
        score = 1,
    },
    [8] = {
        backgroundColor = 0xf2b179,
        fontColor = 0xf9f6f2,
        borderColor = 0xFFFFFF,
        score = 2,
    },
    [16] = {
        backgroundColor = 0xf59563,
        fontColor = 0xf9f6f2,
        borderColor = 0xFFFFFF,
        score = 4,
    },
    [32] = {
        backgroundColor = 0xf67c5f,
        fontColor = 0xf9f6f2,
        borderColor = 0x2D3436,
        score = 8,
    },
    [64] = {
        backgroundColor = 0xf65e3b,
        fontColor = 0xf9f6f2,
        borderColor = 0xFFFFFF,
        score = 16,
    },
    [128] = {
        backgroundColor = 0xedcf72,
        fontColor = 0xf9f6f2,
        borderColor = 0x2D3436,
        score = 32,
    },
    [256] = {
        backgroundColor = 0xedcc61,
        fontColor = 0xf9f6f2,
        borderColor = 0x2D3436,
        score = 64,
    },
    [512] = {
        backgroundColor = 0xedc850,
        fontColor = 0xf9f6f2,
        borderColor = 0xFFFFFF,
        score = 128,
    },
    [1024] = {
        backgroundColor = 0xedc53f,
        fontColor = 0xf9f6f2,
        borderColor = 0xFFFFFF,
        score = 256,
    },
    [2048] = {
        backgroundColor = 0xedc22e,
        fontColor = 0xf9f6f2,
        borderColor = 0x2D3436,
        score = 512,
    }
}

local playerData = {
    -- Example:
    -- ["Missar#5078"] = {
    --     currentGame = {
    --         board = {
    --             { 2, 2, 4, 4 },
    --             { 0, 8, 8, 0 },
    --             { 16, 0, 16, 16 },
    --             { 32, 32, 64, 64 }
    --         },
    --         score = 24,
    --         movesCount = 7,
    --         hasWon = false
    --     },
    --     sessionStats = {
    --         gamesPlayed = 3,
    --         gamesWon = 0,
    --         totalMoves = 123,
    --         highestScore = 256,
    --         highestTile = 512
    --     },
    --     settings = {}
    -- }
}

local uiStyle = {
    windowBackground = 0xbbada0,
    windowBorder = 0xf8faef,
    windowFont = 0x776e65,
    resetBackground = 0x8f7a66,
    resetBorder = 0xf8faef,
    resetFont = 0xf8faef,
}

function BuildWelcomeMessage(playerName)
    local title = translate(playerName, "welcomeTitle")
    local subtitle = translate(playerName, "welcomeSubtitle")
    local goal = translate(playerName, "welcomeGoal")
    local controls = translate(playerName, "welcomeControls")
    local gl = translate(playerName, "welcomeGoodLuck")
    local header = "<CS>• [2048]</CS> "
    local body = string.format("<N><CS>%s</CS> - %s\n<CS>%s</CS>\n%s%s\n<CS>%s</CS></N>", playerName, title, subtitle, goal, controls, gl)
    return header .. body
end

function DrawBoardCell(playerName, rowIndex, colIndex, tileValue)
    local boardX = config.ui.boardX
    local boardY = config.ui.boardY
    local cellSize = config.ui.cellSize
    local gap = config.ui.gap
    local margin = config.ui.margin

    local cellIndex = (rowIndex - 1) * 4 + colIndex
    local x = boardX + margin + (colIndex - 1) * (cellSize + gap)
    local y = boardY + margin + (rowIndex - 1) * (cellSize + gap)

    local settings = tileSettings[tileValue] or tileSettings[0]
    local displayText = tileValue > 0 and tostring(tileValue) or ""

    local fontSize = 10
    if tileValue >= 1000 then
        fontSize = 7
    elseif tileValue >= 100 then
        fontSize = 8
    elseif tileValue >= 10 then
        fontSize = 9
    end

    local fontColor = string.format("%06X", settings.fontColor)
    ui.addTextArea(cellIndex, "<b><font size='"..fontSize.."' color='#"..fontColor.."'><p align='center'>"..displayText.."</p></font></b>", playerName, x, y, cellSize, cellSize,
        settings.backgroundColor, settings.backgroundColor, 1, true)
end

function RenderBoard(playerName)
    if not playerData[playerName] or not playerData[playerName].currentGame then return end
    local board = playerData[playerName].currentGame.board
    for row = 1, 4 do
        for col = 1, 4 do
            DrawBoardCell(playerName, row, col, board[row][col])
        end
    end
end

function getPlayerLanguage(playerName)
    local player = tfm.get.room.playerList[playerName]
    if player and player.community then
        if player.community == "ru" then
            return "ru"
        else
            return "en"
        end
    end
end

function translate(playerName, key)
    local lang = getPlayerLanguage(playerName)
    return translations[lang] and translations[lang][key] or translations.en[key] or key
end



function CreateBoard(playerName)
    ui.addTextArea(0, "", playerName, config.ui.boardX, config.ui.boardY, 200, 200, uiStyle.windowBackground, uiStyle.windowBorder, 1, true)
    for row = 1, 4 do
        for col = 1, 4 do
            DrawBoardCell(playerName, row, col, 0)
        end
    end
end

function InitializePlayerBoard(playerName)
    if playerData[playerName] and playerData[playerName].currentGame and playerData[playerName].currentGame.board then
        RenderBoard(playerName)
        UpdateStatsDisplay(playerName)
        print(translate(playerName, "boardInitialized") .. " " .. playerName .. " " .. translate(playerName, "withSavedData"))
        return true
    else
        print(translate(playerName, "noSavedData") .. " " .. playerName .. ", " .. translate(playerName, "creatingNewBoard"))
        return false
    end
end

function GenerateNewTile(playerName)
    if not playerData[playerName] or not playerData[playerName].currentGame then
        return false
    end
    
    local board = playerData[playerName].currentGame.board
    local emptyCells = {}
    
    for row = 1, 4 do
        for col = 1, 4 do
            if board[row][col] == 0 then
                table.insert(emptyCells, {row = row, col = col})
            end
        end
    end
    
    if #emptyCells == 0 then
        return false
    end

    local randomIndex = math.random(1, #emptyCells)
    local randomCell = emptyCells[randomIndex]

    local newValue = math.random(1, 10) <= 9 and 2 or 4
    board[randomCell.row][randomCell.col] = newValue

    UpdateBoardDisplay(playerName)
    
    return true
end

function UpdateBoardDisplay(playerName)
    if not playerData[playerName] or not playerData[playerName].currentGame then
        return
    end
    RenderBoard(playerName)
    UpdateStatsDisplay(playerName)
end

function UpdateStatsDisplay(playerName)
    if not playerData[playerName] or not playerData[playerName].currentGame then
        return
    end
    
    local gameData = playerData[playerName].currentGame
    local score = gameData.score or 0
    local moves = gameData.movesCount or 0

    local maxTile = 0
    for row = 1, 4 do
        for col = 1, 4 do
            if gameData.board[row][col] > maxTile then
                maxTile = gameData.board[row][col]
            end
        end
    end
    
    ui.addTextArea(205, "<font size='9' color='#"..string.format("%06X", uiStyle.windowFont).."'><p align='center'><b>"..translate(playerName, "statistics").."\n\n"..translate(playerName, "score")..": "..score.."\n"..translate(playerName, "moves")..": "..moves.."\n"..translate(playerName, "maxTile")..": "..maxTile.."</p></font>\n", playerName, config.ui.statsX, config.ui.statsY, config.ui.statsW, config.ui.statsH, uiStyle.windowBackground, uiStyle.windowBorder, 1, true)
end

function ResetGame(playerName)
    if not playerData[playerName] then
        return false
    end
    
    local currentScore = playerData[playerName].currentGame and playerData[playerName].currentGame.score or 0
    local currentMoves = playerData[playerName].currentGame and playerData[playerName].currentGame.movesCount or 0
    
    if currentScore > (playerData[playerName].sessionStats.highestScore or 0) then
        playerData[playerName].sessionStats.highestScore = currentScore
    end
    
    playerData[playerName].sessionStats.gamesPlayed = (playerData[playerName].sessionStats.gamesPlayed or 0) + 1
    playerData[playerName].sessionStats.totalMoves = (playerData[playerName].sessionStats.totalMoves or 0) + currentMoves

    playerData[playerName].currentGame = {
        board = {
            {0, 0, 0, 0},
            {0, 0, 0, 0},
            {0, 0, 0, 0},
            {0, 0, 0, 0}
        },
        score = 0,
        movesCount = 0,
        hasWon = false
    }
    
    tfm.exec.setPlayerScore(playerName, 0, false)
    
    for row = 1, 4 do
        for col = 1, 4 do
            DrawBoardCell(playerName, row, col, 0)
        end
    end
    
    GenerateNewTile(playerName)
    GenerateNewTile(playerName)
    
    UpdateStatsDisplay(playerName)
    
    ui.removeTextArea(100, playerName)
    ui.removeTextArea(101, playerName)
    ui.removeTextArea(208, playerName)
    tfm.exec.killPlayer(playerName)

    return true
end

function IsMovementBlocked(playerName)
    if not playerData[playerName] or not playerData[playerName].currentGame then
        return false
    end
    
    return playerData[playerName].currentGame.hasWon == true
end

function CheckWin(playerName)
    if not playerData[playerName] or not playerData[playerName].currentGame then
        return false
    end
    
    local board = playerData[playerName].currentGame.board
    
    for row = 1, 4 do
        for col = 1, 4 do
            if board[row][col] == 2048 then
                if not playerData[playerName].currentGame.hasWon then
                    playerData[playerName].currentGame.hasWon = true

                    if playerData[playerName].sessionStats then
                        playerData[playerName].sessionStats.gamesWon = (playerData[playerName].sessionStats.gamesWon or 0) + 1
                    end

                    tfm.exec.giveCheese(playerName)
                    tfm.exec.playerVictory(playerName)
                    tfm.exec.respawnPlayer(playerName)

                    local finalScore = playerData[playerName] and playerData[playerName].currentGame and playerData[playerName].currentGame.score or 0
                    ui.addTextArea(101, "<pt><font size='12' color='#"..string.format("%06X", uiStyle.windowFont).."'><p align='center'><b>"..translate(playerName, "victory").."</b>\n"..translate(playerName, "victoryMessage").."\n\n"..translate(playerName, "finalScore")..": "..finalScore.."</p></font>", playerName, 300, 285, 200, 60, uiStyle.windowBackground, uiStyle.windowBorder, 1, true)
                    ui.addTextArea(208, "<a href='event:reset_game'><p align='center'><font size='10' color='#"..string.format("%06X", uiStyle.resetFont).."'><b>"..translate(playerName, "newGame").."</b></font></p></a>", playerName, 300, 360, 200, 20, uiStyle.resetBackground, uiStyle.resetBorder, 1, true)
                end
                
                return true
            end
        end
    end
    
    return false
end

function SlideRowLeft(row, playerName)
    local compact = {}
    for i = 1, 4 do
        if row[i] ~= 0 then table.insert(compact, row[i]) end
    end

    local mergedRow = {}
    local scoreGained = 0
    local i = 1
    while i <= #compact do
        if i < #compact and compact[i] == compact[i + 1] then
            local mergedValue = compact[i] * 2
            local points = tileSettings[mergedValue] and tileSettings[mergedValue].score or 0
            scoreGained = scoreGained + points
            table.insert(mergedRow, mergedValue)
            i = i + 2
        else
            table.insert(mergedRow, compact[i])
            i = i + 1
        end
    end

    while #mergedRow < 4 do table.insert(mergedRow, 0) end

    if scoreGained > 0 and playerName and playerData[playerName] and playerData[playerName].currentGame then
        playerData[playerName].currentGame.score = (playerData[playerName].currentGame.score or 0) + scoreGained
        tfm.exec.setPlayerScore(playerName, playerData[playerName].currentGame.score, false)
    end

    return mergedRow, scoreGained
end

function RotateBoardClockwise(board)
    local newBoard = {}
    for i = 1, 4 do
        newBoard[i] = {}
        for j = 1, 4 do
            newBoard[i][j] = board[5 - j][i]
        end
    end
    return newBoard
end

function RotateBoardCounterClockwise(board)
    local newBoard = {}
    for i = 1, 4 do
        newBoard[i] = {}
        for j = 1, 4 do
            newBoard[i][j] = board[j][5 - i]
        end
    end
    return newBoard
end

function MoveLeft(playerName)
    if not playerData[playerName] or not playerData[playerName].currentGame then
        return false
    end
    
    if IsMovementBlocked(playerName) then
        return false
    end
    
    local board = playerData[playerName].currentGame.board
    local newBoard = {}
    local moved = false
    
    for row = 1, 4 do
        local originalRow = {board[row][1], board[row][2], board[row][3], board[row][4]}
        newBoard[row] = SlideRowLeft(originalRow, playerName)
        
        for col = 1, 4 do
            if originalRow[col] ~= newBoard[row][col] then
                moved = true
            end
        end
    end
    
    if moved then
        playerData[playerName].currentGame.board = newBoard
        playerData[playerName].currentGame.movesCount = playerData[playerName].currentGame.movesCount + 1
        UpdateBoardDisplay(playerName)
        
        if CheckWin(playerName) then
            return true
        end
        
        return true
    end
    
    return false
end

function MoveRight(playerName)
    if not playerData[playerName] or not playerData[playerName].currentGame then
        return false
    end
    
    if IsMovementBlocked(playerName) then
        return false
    end
    
    local board = playerData[playerName].currentGame.board
    local newBoard = {}
    local moved = false
    
    for row = 1, 4 do
        local originalRow = {board[row][4], board[row][3], board[row][2], board[row][1]}
        local slidRow = SlideRowLeft(originalRow, playerName)
        newBoard[row] = {slidRow[4], slidRow[3], slidRow[2], slidRow[1]}
        
        for col = 1, 4 do
            if board[row][col] ~= newBoard[row][col] then
                moved = true
            end
        end
    end
    
    if moved then
        playerData[playerName].currentGame.board = newBoard
        playerData[playerName].currentGame.movesCount = playerData[playerName].currentGame.movesCount + 1
        UpdateBoardDisplay(playerName)
        
        if CheckWin(playerName) then
            return true
        end
        
        return true
    end
    
    return false
end

function MoveUp(playerName)
    if not playerData[playerName] or not playerData[playerName].currentGame then
        return false
    end
    
    if IsMovementBlocked(playerName) then
        return false
    end
    
    local board = playerData[playerName].currentGame.board
    local rotatedBoard = RotateBoardCounterClockwise(board)
    local newRotatedBoard = {}
    local moved = false
    
    for row = 1, 4 do
        local originalRow = {rotatedBoard[row][1], rotatedBoard[row][2], rotatedBoard[row][3], rotatedBoard[row][4]}
        newRotatedBoard[row] = SlideRowLeft(originalRow, playerName)

        for col = 1, 4 do
            if originalRow[col] ~= newRotatedBoard[row][col] then
                moved = true
            end
        end
    end
    
    if moved then
        local newBoard = RotateBoardClockwise(newRotatedBoard)
        playerData[playerName].currentGame.board = newBoard
        playerData[playerName].currentGame.movesCount = playerData[playerName].currentGame.movesCount + 1
        UpdateBoardDisplay(playerName)

        if CheckWin(playerName) then
            return true
        end
        
        return true
    end
    
    return false
end

function MoveDown(playerName)
    if not playerData[playerName] or not playerData[playerName].currentGame then
        return false
    end

    if IsMovementBlocked(playerName) then
        return false
    end
    
    local board = playerData[playerName].currentGame.board
    local rotatedBoard = RotateBoardClockwise(board)
    local newRotatedBoard = {}
    local moved = false
    
    for row = 1, 4 do
        local originalRow = {rotatedBoard[row][1], rotatedBoard[row][2], rotatedBoard[row][3], rotatedBoard[row][4]}
        newRotatedBoard[row] = SlideRowLeft(originalRow, playerName)

        for col = 1, 4 do
            if originalRow[col] ~= newRotatedBoard[row][col] then
                moved = true
            end
        end
    end
    
    if moved then
        local newBoard = RotateBoardCounterClockwise(newRotatedBoard)
        playerData[playerName].currentGame.board = newBoard
        playerData[playerName].currentGame.movesCount = playerData[playerName].currentGame.movesCount + 1
        UpdateBoardDisplay(playerName)
        
        if CheckWin(playerName) then
            return true
        end
        
        return true
    end
    
    return false
end

function HasAvailableMoves(playerName)
    if not playerData[playerName] or not playerData[playerName].currentGame then
        return false
    end
    
    local board = playerData[playerName].currentGame.board

    for row = 1, 4 do
        for col = 1, 4 do
            if board[row][col] == 0 then
                return true
            end
        end
    end

    for row = 1, 4 do
        for col = 1, 4 do
            local current = board[row][col]
            if (row < 4 and board[row + 1][col] == current) or
               (col < 4 and board[row][col + 1] == current) then
                return true
            end
        end
    end
    
    return false
end

function CheckGameOver(playerName)
    if not HasAvailableMoves(playerName) then
        local finalScore = playerData[playerName] and playerData[playerName].currentGame and playerData[playerName].currentGame.score or 0
        ui.addTextArea(100, "<R><font size='12' color='#"..string.format("%06X", uiStyle.windowFont).."'><p align='center'><b>"..translate(playerName, "gameOver").."</b>\n"..translate(playerName, "noMoves").."\n\n"..translate(playerName, "finalScore")..": "..finalScore.."</p></font>", playerName, 300, 285, 200, 60, uiStyle.windowBackground, uiStyle.windowBorder, 1, true)
        ui.addTextArea(208, "<a href='event:reset_game'><p align='center'><font size='10' color='#"..string.format("%06X", uiStyle.resetFont).."'><b>"..translate(playerName, "newGame").."</b></font></p></a>", playerName, 300, 360, 200, 20, uiStyle.resetBackground, uiStyle.resetBorder, 1, true)
        return true
    end
    return false
end

function SetPlayerSettings(playerName)
    ui.setMapName(config.mapName)
    CreateBoard(playerName)
    
    -- Panel Management
    ui.addTextArea(199, "<font size='10' color='#"..string.format("%06X", uiStyle.resetFont).."'><p align='center'><b>"..translate(playerName, "action").."</b></p></font>", playerName, config.ui.actionsPanelX, config.ui.actionsPanelY, 100, 75, uiStyle.resetBackground, uiStyle.resetBorder, 1, true)
    
    -- Movement
    ui.addTextArea(200, "<a href='event:move_up'><p align='center'><font size='12' color='#"..string.format("%06X", uiStyle.resetFont).."'><b>↑</b></font></p></a>", playerName, config.ui.actionsPanelX + 35, config.ui.actionsPanelY + 20, 30, 30, 0x000000, 0x000000, 0, true)
    ui.addTextArea(201, "<a href='event:move_left'><p align='center'><font size='12' color='#"..string.format("%06X", uiStyle.resetFont).."'><b>←</b></font></p></a>", playerName, config.ui.actionsPanelX + 5, config.ui.actionsPanelY + 50, 30, 30, 0x000000, 0x000000, 0, true)
    ui.addTextArea(202, "<a href='event:move_down'><p align='center'><font size='12' color='#"..string.format("%06X", uiStyle.resetFont).."'><b>↓</b></font></p></a>", playerName, config.ui.actionsPanelX + 35, config.ui.actionsPanelY + 50, 30, 30, 0x000000, 0x000000, 0, true)
    ui.addTextArea(203, "<a href='event:move_right'><p align='center'><font size='12' color='#"..string.format("%06X", uiStyle.resetFont).."'><b>→</b></font></p></a>", playerName, config.ui.actionsPanelX + 65, config.ui.actionsPanelY + 50, 30, 30, 0x000000, 0x000000, 0, true)
    
    -- Reset Game
    ui.addTextArea(207, "<a href='event:reset_game'><p align='center'><font size='10' color='#"..string.format("%06X", uiStyle.resetFont).."'><b>"..translate(playerName, "reset").."</b></font></p></a>", playerName, config.ui.resetButtonX, config.ui.resetButtonY, config.ui.resetButtonW, nil, uiStyle.resetBackground, uiStyle.resetBorder, 1, true)
    local hasData = InitializePlayerBoard(playerName)

    if not hasData then
        if not playerData[playerName] then
            playerData[playerName] = {
                currentGame = {
                    board = {
                        {0, 0, 0, 0},
                        {0, 0, 0, 0},
                        {0, 0, 0, 0},
                        {0, 0, 0, 0}
                    },
                    score = 0,
                    movesCount = 0,
                    hasWon = false
                },
                sessionStats = {
                    gamesPlayed = 0,
                    gamesWon = 0,
                    totalMoves = 0,
                    highestScore = 0,
                    highestTile = 0
                },
                settings = {}
            }
        end
        GenerateNewTile(playerName)
        GenerateNewTile(playerName)
    end
end

function Main()
    function DisableGameFunctions()
        tfm.exec.disableAfkDeath(true)
        tfm.exec.disableAutoNewGame(true)
        tfm.exec.disableAutoScore(true)
        tfm.exec.disableAutoShaman(true)
        tfm.exec.disableAutoTimeLeft(true)
        tfm.exec.disableMinimalistMode(true)
        tfm.exec.disablePhysicalConsumables(true)
    end

    DisableGameFunctions()
    tfm.exec.newGame(config.mapCode)
    tfm.exec.setRoomMaxPlayers(12)

    for targetPlayer in pairs(tfm.get.room.playerList) do
        eventNewPlayer(targetPlayer)
    end
end

function eventNewPlayer(playerName)
    SetPlayerSettings(playerName)
    tfm.exec.respawnPlayer(playerName)
    -- local welcome = BuildWelcomeMessage(playerName)
    -- tfm.exec.chatMessage(welcome, playerName)
end

function eventPlayerDied(playerName)
    tfm.exec.respawnPlayer(playerName)
end

function eventTextAreaCallback(id, playerName, event)
    local arg = {}
    for argument in event:gmatch("[^_]+") do
        table.insert(arg, argument)
    end
    
    if event == "reset_game" then
        ResetGame(playerName)
    elseif arg[1] == "move" then
        local moved = false

        if arg[2] == "left" then
            moved = MoveLeft(playerName)
        elseif arg[2] == "right" then
            moved = MoveRight(playerName)
        elseif arg[2] == "up" then
            moved = MoveUp(playerName)
        elseif arg[2] == "down" then
            moved = MoveDown(playerName)
        else
            return
        end

        if moved then
            GenerateNewTile(playerName)
            if not CheckWin(playerName) then
                CheckGameOver(playerName)
            end
        end
    end
end

function eventPlayerWon(playerName, timeElapsed, timeElapsedSinceRespawn)
    local timeMs = timeElapsedSinceRespawn or timeElapsed or 0
    local timeSec = timeMs / 100 -- 1000
    local timeStr = string.format("%.2f", timeSec)
    local collects = translate(playerName, "collects2048")
    local seconds = translate(playerName, "seconds")
    local broadcastMsg = string.format("<CS>• [2048]</CS> <N><CS>%s</CS> %s <CS>%s</CS> %s!</N>", playerName, collects, timeStr, seconds)
    -- tfm.exec.chatMessage(broadcastMsg)
    print(broadcastMsg)
end

Main()
