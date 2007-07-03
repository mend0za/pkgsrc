/*	$NetBSD: rmd160.h,v 1.3 2007/07/03 18:49:46 joerg Exp $	*/

/********************************************************************\
 *
 *      FILE:     rmd160.h
 *
 *      CONTENTS: Header file for a sample C-implementation of the
 *                RIPEMD-160 hash-function. 
 *      TARGET:   any computer with an ANSI C compiler
 *
 *      AUTHOR:   Antoon Bosselaers, ESAT-COSIC
 *      DATE:     1 March 1996
 *      VERSION:  1.0
 *
 *      Copyright (c) Katholieke Universiteit Leuven
 *      1996, All Rights Reserved
 *
\********************************************************************/

/*
 * from OpenBSD: rmd160.h,v 1.4 1999/08/16 09:59:04 millert Exp
 */

#ifndef _RMD160_H_
#define _RMD160_H_

typedef struct {
	uint32_t	state[5];	/* state (ABCDE) */
	uint32_t	length[2];	/* number of bits */
	u_char		bbuffer[64];    /* overflow buffer */
	uint32_t	buflen;		/* number of chars in bbuffer */
} RMD160_CTX;

__BEGIN_DECLS
void	RMD160Init(RMD160_CTX *);
void	RMD160Transform(uint32_t[5], const uint32_t[16]);
void	RMD160Update(RMD160_CTX *, const u_char *, uint32_t);
void	RMD160Final(u_char[20], RMD160_CTX *);
#ifndef	_KERNEL
char	*RMD160End(RMD160_CTX *, char *);
char	*RMD160File(char *, char *);
char	*RMD160Data(const u_char *, size_t, char *);
#endif /* _KERNEL */
__END_DECLS

#endif  /* !_RMD160_H_ */
