.class public final Ljava8/util/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/OptionalInt$OICache;
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava8/util/OptionalInt;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava8/util/OptionalInt;

    invoke-direct {v0}, Ljava8/util/OptionalInt;-><init>()V

    sput-object v0, Ljava8/util/OptionalInt;->EMPTY:Ljava8/util/OptionalInt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    .line 91
    iput v0, p0, Ljava8/util/OptionalInt;->value:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    .line 117
    iput p1, p0, Ljava8/util/OptionalInt;->value:I

    return-void
.end method

.method public static empty()Ljava8/util/OptionalInt;
    .locals 1

    .line 107
    sget-object v0, Ljava8/util/OptionalInt;->EMPTY:Ljava8/util/OptionalInt;

    return-object v0
.end method

.method public static of(I)Ljava8/util/OptionalInt;
    .locals 1

    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    .line 129
    sget-object v0, Ljava8/util/OptionalInt$OICache;->cache:[Ljava8/util/OptionalInt;

    add-int/lit16 p0, p0, 0x80

    aget-object p0, v0, p0

    return-object p0

    .line 131
    :cond_0
    new-instance v0, Ljava8/util/OptionalInt;

    invoke-direct {v0, p0}, Ljava8/util/OptionalInt;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 292
    :cond_0
    instance-of v1, p1, Ljava8/util/OptionalInt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 296
    :cond_1
    check-cast p1, Ljava8/util/OptionalInt;

    .line 297
    iget-boolean v1, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v1, :cond_2

    iget v1, p0, Ljava8/util/OptionalInt;->value:I

    iget p1, p1, Ljava8/util/OptionalInt;->value:I

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Ljava8/util/OptionalInt;->isPresent:Z

    iget-boolean p1, p1, Ljava8/util/OptionalInt;->isPresent:Z

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAsInt()I
    .locals 2

    .line 150
    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 153
    iget v0, p0, Ljava8/util/OptionalInt;->value:I

    return v0

    .line 151
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 311
    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava8/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Ljava8/util/function/IntConsumer;)V
    .locals 1

    .line 174
    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 175
    iget v0, p0, Ljava8/util/OptionalInt;->value:I

    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    :cond_0
    return-void
.end method

.method public ifPresentOrElse(Ljava8/util/function/IntConsumer;Ljava/lang/Runnable;)V
    .locals 1

    .line 192
    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 193
    iget p2, p0, Ljava8/util/OptionalInt;->value:I

    invoke-interface {p1, p2}, Ljava8/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    return v0
.end method

.method public orElse(I)I
    .locals 1

    .line 231
    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p1, p0, Ljava8/util/OptionalInt;->value:I

    :cond_0
    return p1
.end method

.method public orElseGet(Ljava8/util/function/IntSupplier;)I
    .locals 1

    .line 245
    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    iget p1, p0, Ljava8/util/OptionalInt;->value:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava8/util/function/IntSupplier;->getAsInt()I

    move-result p1

    :goto_0
    return p1
.end method

.method public orElseThrow(Ljava8/util/function/Supplier;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "+TX;>;)I^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 266
    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 267
    iget p1, p0, Ljava8/util/OptionalInt;->value:I

    return p1

    .line 269
    :cond_0
    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public stream()Ljava8/util/stream/IntStream;
    .locals 1

    .line 216
    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    .line 217
    iget v0, p0, Ljava8/util/OptionalInt;->value:I

    invoke-static {v0}, Ljava8/util/stream/IntStreams;->of(I)Ljava8/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    invoke-static {}, Ljava8/util/stream/IntStreams;->empty()Ljava8/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 328
    iget-boolean v0, p0, Ljava8/util/OptionalInt;->isPresent:Z

    if-eqz v0, :cond_0

    const-string v0, "OptionalInt[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava8/util/OptionalInt;->value:I

    .line 329
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OptionalInt.empty"

    :goto_0
    return-object v0
.end method
