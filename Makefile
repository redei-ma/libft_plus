NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror -g -I$(INCLUDE)

SRC = \
	ft_abs.c ft_atoi.c ft_bzero.c ft_free_char_mat.c ft_freemat.c ft_itoa.c ft_matlen.c ft_natoi.c ft_tolower.c ft_toupper.c get_next_line_bonus.c safe_close.c \
	$(addprefix alloc/, ft_calloc.c ft_nsplit.c ft_realloc.c ft_split.c ft_strdup.c ft_strjoin.c ft_strtrim.c ft_substr.c) \
	$(addprefix lst/, ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c ft_lstiter.c ft_lstlast.c ft_lstmap.c ft_lstnew.c ft_lstsize.c) \
	$(addprefix mem/, ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c) \
	$(addprefix print/, ft_printf_utils.c ft_printf.c ft_printfd_utils.c ft_printfd.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c) \
	$(addprefix str/, ft_strchr.c ft_strcmp.c ft_striteri.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c) \
	$(addprefix type/, ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_isspace.c)
SRC_FILE = $(addprefix src/, $(SRC))

INCLUDE = includes

OBJ_DIR = ./.obj
OBJ = $(SRC_FILE:%.c=$(OBJ_DIR)/%.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)

$(OBJ_DIR)/%.o: %.c
	@mkdir -p $(@D)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
.SILENT:
