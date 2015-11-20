#ifndef TRIGGER_H
#define TRIGGER_H

#include "common.h"

typedef struct PQLTrigger
{
	char			*trgname;
	PQLObject		table;
	char			*trgdef;
	char			*comment;
} PQLTrigger;

PQLTrigger *getTriggers(PGconn *c, int *n);

void dumpDropTrigger(FILE *output, PQLTrigger t);
void dumpCreateTrigger(FILE *output, PQLTrigger t);
void dumpAlterTrigger(FILE *output, PQLTrigger a, PQLTrigger b);

#endif	/* TRIGGER_H */
