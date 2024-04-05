.SECONDARY: $(OBJS)

FC = gfortran
CFLAGS = -c -g -Og -Wall

SRC_DIR = src
BUILD_DIR = build
BIN_DIR = bin

SRCS = $(wildcard $(SRC_DIR)/*.f90)
OBJS = $(patsubst $(SRC_DIR)/%.f90, $(BUILD_DIR)/%.o, $(SRCS))
EXES = $(patsubst $(SRC_DIR)/%.f90, $(BIN_DIR)/%.exe, $(SRCS))

all: $(EXES)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.f90
	$(FC) $(CFLAGS) $< -o $@

$(BIN_DIR)/%.exe: $(BUILD_DIR)/%.o
	$(FC) $< -o $@

run: all
	@cd $(BIN_DIR) && \
	for %%e in ($(notdir $(EXES))); do \
		.\%%~ne.exe; \
	done

clean:
	del /Q $(BUILD_DIR)\*.o $(BIN_DIR)\*.exe

.PHONY: all run clean
