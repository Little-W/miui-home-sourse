.class public Lcom/miui/maml/data/DateFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "DateFunctions.java"


# static fields
.field public static final REPEAT_MONTH:I = 0x2

.field public static final REPEAT_NO:I = 0x0

.field public static final REPEAT_WEEK:I = 0x3

.field public static final REPEAT_YEAR:I = 0x1


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    return-void
.end method

.method private changeYear(Ljava/time/LocalDate;I)Ljava/time/LocalDate;
    .locals 3

    .line 123
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    :goto_1
    invoke-static {p2, v2, p1}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method private diffDateMonth(Ljava/time/LocalDate;Ljava/time/LocalDate;)J
    .locals 5

    .line 102
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p1

    .line 103
    invoke-virtual {p2}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v0

    .line 104
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v1

    sub-int v2, v0, v1

    const-wide/16 v3, 0x1

    .line 106
    invoke-virtual {p2, v3, v4}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object p2

    .line 107
    invoke-virtual {p2}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result p2

    if-lt p1, v1, :cond_1

    if-le p1, v0, :cond_0

    int-to-long p1, v2

    return-wide p1

    :cond_0
    sub-int/2addr p1, v1

    int-to-long p1, p1

    return-wide p1

    :cond_1
    if-le p1, p2, :cond_2

    add-int/2addr v2, p2

    int-to-long p1, v2

    return-wide p1

    :cond_2
    add-int/2addr v2, p1

    int-to-long p1, v2

    return-wide p1
.end method

.method private diffDateYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)J
    .locals 2

    .line 87
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 88
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/DateFunctions;->changeYear(Ljava/time/LocalDate;I)Ljava/time/LocalDate;

    move-result-object p1

    .line 98
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, p2, p1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

    .line 89
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/DateFunctions;->changeYear(Ljava/time/LocalDate;I)Ljava/time/LocalDate;

    move-result-object p1

    .line 91
    invoke-virtual {p2}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v0

    sget-object v1, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_2

    .line 92
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1

    .line 94
    :cond_2
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result p1

    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1
.end method

.method static load()V
    .locals 3

    const-string v0, "diffDate"

    .line 32
    new-instance v1, Lcom/miui/maml/data/DateFunctions;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/miui/maml/data/DateFunctions;-><init>(I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method diffDate(JJI)J
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->long2LocalDate(J)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lcom/miui/maml/data/DateFunctions;->long2LocalDate(J)Ljava/time/LocalDate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lcom/miui/maml/data/DateFunctions;->diffDate(Ljava/time/LocalDate;Ljava/time/LocalDate;I)J

    move-result-wide p1

    return-wide p1
.end method

.method diffDate(Ljava/time/LocalDate;Ljava/time/LocalDate;I)J
    .locals 2

    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->diffDateYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p3, :cond_1

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->diffDateMonth(Ljava/time/LocalDate;Ljava/time/LocalDate;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    const/4 v0, 0x3

    if-ne v0, p3, :cond_3

    .line 64
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/DayOfWeek;->getValue()I

    move-result p1

    .line 65
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/DayOfWeek;->getValue()I

    move-result p2

    if-lt p1, p2, :cond_2

    sub-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1

    :cond_2
    add-int/lit8 p1, p1, 0x7

    sub-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1

    .line 72
    :cond_3
    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 8

    const/4 p2, 0x0

    .line 41
    aget-object p2, p1, p2

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v3, v0

    const/4 p2, 0x1

    .line 42
    aget-object p2, p1, p2

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v5, v0

    const/4 p2, 0x2

    .line 43
    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    double-to-int v7, p1

    move-object v2, p0

    .line 44
    invoke-virtual/range {v2 .. v7}, Lcom/miui/maml/data/DateFunctions;->diffDate(JJI)J

    move-result-wide p1

    long-to-double p1, p1

    return-wide p1
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method localDate2Long(Ljava/time/LocalDate;)J
    .locals 2

    .line 77
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method long2LocalDate(J)Ljava/time/LocalDate;
    .locals 0

    .line 82
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method
