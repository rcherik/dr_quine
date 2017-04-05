# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rcherik <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/10/14 14:45:00 by rcherik           #+#    #+#              #
#    Updated: 2016/11/14 15:25:03 by rcherik          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

OBJ_DIR = obj/

COLLEEN = Colleen
GRACE =	Grace
SULLY =	Sully

CC = gcc
CFLAGS = -Wall -Werror -Wextra

COLLEEN_SRC = $(COLLEEN).c
GRACE_SRC = $(GRACE).c
SULLY_SRC = $(SULLY).c
OBJ1 = $(addprefix $(OBJ_DIR), $(COLLEEN_SRC:.c=.o))
OBJ2 = $(addprefix $(OBJ_DIR), $(GRACE_SRC:.c=.o))
OBJ3 = $(addprefix $(OBJ_DIR), $(SULLY_SRC:.c=.o))

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(OBJ1)
	$(CC) $(CFLAGS) -o $(COLLEEN) $^

$(GRACE): $(OBJ2)
	$(CC) $(CFLAGS) -o $(GRACE) $^

$(SULLY): $(OBJ3)
	$(CC) $(CFLAGS) -o $(SULLY) $^

$(OBJ_DIR)%.o: %.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -rf $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

.PHONY: all re fclean clean
