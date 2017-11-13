# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tvisenti <tvisenti@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/07 16:23:21 by tvisenti          #+#    #+#              #
#    Updated: 2017/11/13 10:35:22 by tvisenti         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: clean fclean re test

NAME =		libfts.a

CC = cc -Wall -Wextra -Werror
AS = nasm
ASFLAGS = -f macho64

SRC_PATH =	./src
SRC_NAME =	ft_isdigit.s \
			ft_isalpha.s \
			ft_isalnum.s \
			ft_isascii.s \
			ft_isprint.s \
			ft_bzero.s \
			ft_strcat.s \
			ft_tolower.s \
			ft_toupper.s \
			ft_puts.s \
			ft_isupper.s \
			ft_islower.s \
			ft_strlen.s \
			ft_memset.s \
			ft_memcpy.s \
			ft_strdup.s \
			ft_cat.s

OBJ = $(addprefix $(SRC_PATH)/, $(SRC_NAME:.s=.o))

LINKER = ld
LINKER_FLAGS = -macosx_version_min 10.8 -lSystem

LIB = -L ./ -lfts

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

test: $(OBJ) main.c
	$(CC) main.c $(LIB) -o a.out
