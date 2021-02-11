.class public final Ljava8/util/Comparators;
.super Ljava/lang/Object;
.source "Comparators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/Comparators$NullComparator;,
        Ljava8/util/Comparators$NaturalOrderComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static comparing(Ljava8/util/function/Function;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/lang/Comparable<",
            "-TU;>;>(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 199
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {p0}, Ljava8/util/Comparators$$Lambda$2;->lambdaFactory$(Ljava8/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    check-cast p0, Ljava/util/Comparator;

    return-object p0
.end method

.method public static comparing(Ljava8/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/Comparator<",
            "-TU;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 165
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p1, p0}, Ljava8/util/Comparators$$Lambda$1;->lambdaFactory$(Ljava/util/Comparator;Ljava8/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    check-cast p0, Ljava/util/Comparator;

    return-object p0
.end method

.method public static comparingDouble(Ljava8/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 262
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p0}, Ljava8/util/Comparators$$Lambda$5;->lambdaFactory$(Ljava8/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    check-cast p0, Ljava/util/Comparator;

    return-object p0
.end method

.method public static comparingInt(Ljava8/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 220
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p0}, Ljava8/util/Comparators$$Lambda$3;->lambdaFactory$(Ljava8/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    check-cast p0, Ljava/util/Comparator;

    return-object p0
.end method

.method public static comparingLong(Ljava8/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 241
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {p0}, Ljava8/util/Comparators$$Lambda$4;->lambdaFactory$(Ljava8/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    check-cast p0, Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic lambda$comparing$628f93f7$1(Ljava8/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 201
    invoke-interface {p0, p1}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p0, p2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$comparing$b1478148$1(Ljava/util/Comparator;Ljava8/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 168
    invoke-interface {p1, p2}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 169
    invoke-interface {p1, p3}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 168
    invoke-interface {p0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$comparingDouble$57709dbc$1(Ljava8/util/function/ToDoubleFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 264
    invoke-interface {p0, p1}, Ljava8/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-interface {p0, p2}, Ljava8/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$comparingInt$134fc06a$1(Ljava8/util/function/ToIntFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 222
    invoke-interface {p0, p1}, Ljava8/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p0, p2}, Ljava8/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1, p0}, Ljava8/lang/Integers;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$comparingLong$c3a37e6$1(Ljava8/util/function/ToLongFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 243
    invoke-interface {p0, p1}, Ljava8/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-interface {p0, p2}, Ljava8/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava8/lang/Longs;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$thenComparing$aafead48$1(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 302
    invoke-interface {p0, p2, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static naturalOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 131
    sget-object v0, Ljava8/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljava8/util/Comparators$NaturalOrderComparator;

    return-object v0
.end method

.method public static nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava8/util/Comparators$NullComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava8/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method

.method public static nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava8/util/Comparators$NullComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava8/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 113
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static reversed(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 434
    instance-of v0, p0, Ljava8/util/Comparators$NullComparator;

    if-eqz v0, :cond_0

    .line 435
    check-cast p0, Ljava8/util/Comparators$NullComparator;

    invoke-virtual {p0}, Ljava8/util/Comparators$NullComparator;->reversed()Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    .line 437
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 296
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    instance-of v0, p0, Ljava8/util/Comparators$NullComparator;

    if-eqz v0, :cond_0

    .line 299
    check-cast p0, Ljava8/util/Comparators$NullComparator;

    invoke-virtual {p0, p1}, Ljava8/util/Comparators$NullComparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0

    .line 301
    :cond_0
    invoke-static {p0, p1}, Ljava8/util/Comparators$$Lambda$6;->lambdaFactory$(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    check-cast p0, Ljava/util/Comparator;

    return-object p0
.end method

.method public static thenComparing(Ljava/util/Comparator;Ljava8/util/function/Function;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/lang/Comparable<",
            "-TU;>;>(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 357
    invoke-static {p1}, Ljava8/util/Comparators;->comparing(Ljava8/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Ljava8/util/Comparators;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static thenComparing(Ljava/util/Comparator;Ljava8/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava8/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/Comparator<",
            "-TU;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 331
    invoke-static {p1, p2}, Ljava8/util/Comparators;->comparing(Ljava8/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Ljava8/util/Comparators;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static thenComparingDouble(Ljava/util/Comparator;Ljava8/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava8/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 420
    invoke-static {p1}, Ljava8/util/Comparators;->comparingDouble(Ljava8/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Ljava8/util/Comparators;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static thenComparingInt(Ljava/util/Comparator;Ljava8/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava8/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 378
    invoke-static {p1}, Ljava8/util/Comparators;->comparingInt(Ljava8/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Ljava8/util/Comparators;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static thenComparingLong(Ljava/util/Comparator;Ljava8/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava8/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 399
    invoke-static {p1}, Ljava8/util/Comparators;->comparingLong(Ljava8/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Ljava8/util/Comparators;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method
