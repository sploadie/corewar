# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tgauvrit <tgauvrit@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/20 16:35:37 by tgauvrit          #+#    #+#              #
#    Updated: 2015/03/11 15:41:26 by tgauvrit         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =			corewar asm

CC =			gcc
FLAGS =			-Wall -Werror -Wextra $(HEADER_FLAGS) -g
HEADER_FLAGS =	-I $(HEADER_DIR) -I $(FT_LIB_DIR)
LIBRARIES =		-L$(FT_LIB_DIR) -l$(FT_LIB_NAME)

FT_LIB_NAME =	ft
FT_LIB_DIR =	./libft/
FT_LIB =		$(FT_LIB_DIR)lib$(FT_LIB_NAME).a

HEADER_DIR =	./includes/
HEADERS =		$(HEADER_DIR)corewar.h

MAIN_DIR =		./mains/
MAIN_COMPILED =	corewar_main.o \
				asm_main.o

SRC_DIR =		./srcs/
SRC_COMPILED =	example.o

COMPILED =		$(SRC_COMPILED) $(MAIN_COMPILED)

all: $(NAME)

$(NAME): %: %_main.o $(FT_LIB) $(SRC_COMPILED)
	$(CC) $(FLAGS) $(LIBRARIES) $< $(SRC_COMPILED) -o $@

$(SRC_COMPILED): %.o: $(SRC_DIR)%.c $(HEADERS)
	$(CC) -c $(FLAGS) $< -o $@

$(MAIN_COMPILED): %.o: $(MAIN_DIR)%.c $(HEADERS)
	$(CC) -c $(FLAGS) $< -o $@

$(FT_LIB):
	@make -C $(FT_LIB_DIR);

clean:
	@make clean -C $(FT_LIB_DIR);
	-/bin/rm -f $(COMPILED)

fclean: clean
	-/bin/rm -f $(FT_LIB)
	-/bin/rm -f $(NAME)

re: fclean all
