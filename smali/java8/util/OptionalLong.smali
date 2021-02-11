.class public final Ljava8/util/OptionalLong;
.super Ljava/lang/Object;
.source "OptionalLong.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/OptionalLong$OLCache;
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava8/util/OptionalLong;


# instance fields
.field private final isPresent:Z

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava8/util/OptionalLong;

    invoke-direct {v0}, Ljava8/util/OptionalLong;-><init>()V

    sput-object v0, Ljava8/util/OptionalLong;->EMPTY:Ljava8/util/OptionalLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Ljava8/util/OptionalLong;->value:J

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    .line 118
    iput-wide p1, p0, Ljava8/util/OptionalLong;->value:J

    return-void
.end method

.method public static empty()Ljava8/util/OptionalLong;
    .locals 1

    .line 108
    sget-object v0, Ljava8/util/OptionalLong;->EMPTY:Ljava8/util/OptionalLong;

    return-object v0
.end method

.method public static of(J)Ljava8/util/OptionalLong;
    .locals 2

    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x7f

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 130
    sget-object v0, Ljava8/util/OptionalLong$OLCache;->cache:[Ljava8/util/OptionalLong;

    long-to-int p0, p0

    add-int/lit16 p0, p0, 0x80

    aget-object p0, v0, p0

    return-object p0

    .line 132
    :cond_0
    new-instance v0, Ljava8/util/OptionalLong;

    invoke-direct {v0, p0, p1}, Ljava8/util/OptionalLong;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 293
    :cond_0
    instance-of v1, p1, Ljava8/util/OptionalLong;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 297
    :cond_1
    check-cast p1, Ljava8/util/OptionalLong;

    .line 298
    iget-boolean v1, p0, Ljava8/util/OptionalLong;->isPresent:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Ljava8/util/OptionalLong;->isPresent:Z

    if-eqz v1, :cond_2

    iget-wide v3, p0, Ljava8/util/OptionalLong;->value:J

    iget-wide v5, p1, Ljava8/util/OptionalLong;->value:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Ljava8/util/OptionalLong;->isPresent:Z

    iget-boolean p1, p1, Ljava8/util/OptionalLong;->isPresent:Z

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAsLong()J
    .locals 2

    .line 151
    iget-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 154
    iget-wide v0, p0, Ljava8/util/OptionalLong;->value:J

    return-wide v0

    .line 152
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 312
    iget-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava8/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava8/lang/Longs;->hashCode(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Ljava8/util/function/LongConsumer;)V
    .locals 2

    .line 175
    iget-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 176
    iget-wide v0, p0, Ljava8/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Ljava8/util/function/LongConsumer;Ljava/lang/Runnable;)V
    .locals 2

    .line 193
    iget-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 194
    iget-wide v0, p0, Ljava8/util/OptionalLong;->value:J

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    return v0
.end method

.method public orElse(J)J
    .locals 1

    .line 232
    iget-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Ljava8/util/OptionalLong;->value:J

    :cond_0
    return-wide p1
.end method

.method public orElseGet(Ljava8/util/function/LongSupplier;)J
    .locals 2

    .line 246
    iget-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava8/util/OptionalLong;->value:J

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava8/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public orElseThrow(Ljava8/util/function/Supplier;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "+TX;>;)J^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 267
    iget-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 268
    iget-wide v0, p0, Ljava8/util/OptionalLong;->value:J

    return-wide v0

    .line 270
    :cond_0
    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public stream()Ljava8/util/stream/LongStream;
    .locals 2

    .line 217
    iget-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    .line 218
    iget-wide v0, p0, Ljava8/util/OptionalLong;->value:J

    invoke-static {v0, v1}, Ljava8/util/stream/LongStreams;->of(J)Ljava8/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    invoke-static {}, Ljava8/util/stream/LongStreams;->empty()Ljava8/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 329
    iget-boolean v0, p0, Ljava8/util/OptionalLong;->isPresent:Z

    if-eqz v0, :cond_0

    const-string v0, "OptionalLong[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Ljava8/util/OptionalLong;->value:J

    .line 330
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OptionalLong.empty"

    :goto_0
    return-object v0
.end method
