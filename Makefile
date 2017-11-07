# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tvisenti <tvisenti@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/07 16:23:21 by tvisenti          #+#    #+#              #
#    Updated: 2017/11/07 16:43:31 by tvisenti         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: clean fclean re test

NAME =		libfts.a

CCAS = nasm
CCASFLAGS = -f macho64

SRC_PATH =	./src
SRC_NAME =	test.s
SRC = $(addprefix $(SRC_PATH)/, $(SRC_NAME))

OBJ_PATH = ./obj
OBJ_NAME = $(SRC_NAME:.s=.o)
OBJ = $(addprefix $(OBJ_PATH)/, $(OBJ_NAME))

INC = -I includes
LINKER = ld
LINKER_FLAGS = -macosx_version_min 10.8 -lSystem

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

test:
	@mkdir -p ./obj
	@$(CCAS) $(CCASFLAGS) $(SRC) -o $(OBJ)
	@$(LINKER) $(OBJ) $(LINKER_FLAGS)
