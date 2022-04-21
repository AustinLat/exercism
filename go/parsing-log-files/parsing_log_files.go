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
    re := regexp.MustCompile(`User *\S*`)
    for _, line := range lines {
        user := re.FindString(line)
        newLines = append(newLines, fmt.Sprintf("%s %s", user, line))
    }
    return newLines
}
