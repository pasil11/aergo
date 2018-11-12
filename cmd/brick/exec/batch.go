package exec

import (
	"bufio"
	"fmt"
	"os"
	"strings"

	"github.com/aergoio/aergo/cmd/brick/context"
)

func init() {
	registerExec(&batch{})
}

type batch struct{}

func (c *batch) Command() string {
	return "batch"
}

func (c *batch) Syntax() string {
	return fmt.Sprintf("batch %s", context.PathSymbol)
}

func (c *batch) Usage() string {
	return fmt.Sprintf("batch <batch_file_path>")
}

func (c *batch) Describe() string {
	return "batch run"
}

func (c *batch) Validate(args string) error {

	_, err := c.parse(args)

	return err
}

func (c *batch) parse(args string) (string, error) {
	splitArgs := strings.Fields(args)
	if len(splitArgs) < 1 {
		return "", fmt.Errorf("need an argument. usage: %s", c.Usage())
	}

	batchFilePath := splitArgs[0]
	if _, err := os.Stat(splitArgs[0]); os.IsNotExist(err) {
		return "", fmt.Errorf("fail to read a brick batch file %s: %s", batchFilePath, err.Error())
	}

	return batchFilePath, nil
}

func (c *batch) Run(args string) (string, error) {

	batchFilePath, _ := c.parse(args)

	batchFile, err := os.Open(batchFilePath)
	if err != nil {
		return "", err
	}

	var cmdLines []string
	scanner := bufio.NewScanner(batchFile)
	for scanner.Scan() {
		cmdLines = append(cmdLines, scanner.Text())
	}

	batchFile.Close()

	for _, line := range cmdLines {
		Broker(line)
	}

	return "batch exec is finished", nil
}
