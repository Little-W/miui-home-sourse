.class final Ljava8/util/stream/ForEachOps;
.super Ljava/lang/Object;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/ForEachOps$ForEachOrderedTask;,
        Ljava8/util/stream/ForEachOps$ForEachTask;,
        Ljava8/util/stream/ForEachOps$ForEachOp;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(Ljava8/util/function/DoubleConsumer;Z)Ljava8/util/stream/TerminalOp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/DoubleConsumer;",
            "Z)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava8/util/stream/ForEachOps$ForEachOp$OfDouble;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/ForEachOps$ForEachOp$OfDouble;-><init>(Ljava8/util/function/DoubleConsumer;Z)V

    return-object v0
.end method

.method public static makeInt(Ljava8/util/function/IntConsumer;Z)Ljava8/util/stream/TerminalOp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntConsumer;",
            "Z)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava8/util/stream/ForEachOps$ForEachOp$OfInt;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/ForEachOps$ForEachOp$OfInt;-><init>(Ljava8/util/function/IntConsumer;Z)V

    return-object v0
.end method

.method public static makeLong(Ljava8/util/function/LongConsumer;Z)Ljava8/util/stream/TerminalOp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/LongConsumer;",
            "Z)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava8/util/stream/ForEachOps$ForEachOp$OfLong;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/ForEachOps$ForEachOp$OfLong;-><init>(Ljava8/util/function/LongConsumer;Z)V

    return-object v0
.end method

.method public static makeRef(Ljava8/util/function/Consumer;Z)Ljava8/util/stream/TerminalOp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;Z)",
            "Ljava8/util/stream/TerminalOp<",
            "TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava8/util/stream/ForEachOps$ForEachOp$OfRef;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/ForEachOps$ForEachOp$OfRef;-><init>(Ljava8/util/function/Consumer;Z)V

    return-object v0
.end method
