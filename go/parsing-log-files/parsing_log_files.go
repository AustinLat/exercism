package parsinglogfiles

import (
    "regexp"
    "fmt"
)

func IsValidLine(text string) bool {
    re := regexp.MustCompile(`^\[TRC]|^\[DBG]|^\[INF]|^\[WRN]|^\[ERR]|^\[FTL]`)
   return re.MatchString(text)
}

func SplitLogLine(text string) []string {
    re := regexp.MustCompile(`<[=|\-|~\*]*>`)
    return re.Split(text, -1)
}

func CountQuotedPasswords(lines []string) int {
    count := 0
    re := regexp.MustCompile(`(?i)".*password.*"`)
    for _, l := range lines {
        if re.MatchString(l) { count ++ }
    }
    return count
}

func RemoveEndOfLineText(text string) string {
    re := regexp.MustCompile(`end-of-line\S*`)
    return re.ReplaceAllString(text, "")
}

func TagWithUserName(lines []string) []string {
    newLines := []string{}
    re := regexp.MustCompile(`User\s+(\w+)`)
    for _, line := range lines {
        user := re.FindStringSubmatch(line)
        if user != nil {
            line = fmt.Sprintf("[USR] %s %s", user[1], line)
        }
        newLines = append(newLines, line)
    }
    return newLines
}
