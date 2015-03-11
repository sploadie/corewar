/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   corewar.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tgauvrit <tgauvrit@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/26 16:57:01 by tgauvrit          #+#    #+#             */
/*   Updated: 2015/03/11 15:30:32 by tgauvrit         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef COREWAR_H
# define COREWAR_H

/*
** Permitted Functions:
** open
** read
** write
** lseek
** close
** malloc
** realloc
** free
** exit
** perror
** strerror
** errno
*/

# include <unistd.h>
# include <stdlib.h>
# include <stdio.h>
# include <limits.h>
# include "libft.h"

void		example(void);

#endif
