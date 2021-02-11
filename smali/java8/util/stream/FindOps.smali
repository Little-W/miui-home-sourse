.class final Ljava8/util/stream/FindOps;
.super Ljava/lang/Object;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/FindOps$FindTask;,
        Ljava8/util/stream/FindOps$FindSink;,
        Ljava8/util/stream/FindOps$FindOp;
    }
.end annotation


# static fields
.field private static final ANY_DOUBLE:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava8/util/OptionalDouble;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANY_INT:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava8/util/OptionalInt;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANY_LONG:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava8/util/OptionalLong;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANY_REF:Ljava8/util/stream/TerminalOp;

.field private static final DOUBLE_IS_PRESENT:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "Ljava8/util/OptionalDouble;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOUBLE_SINK_SUPP:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/TerminalSink<",
            "Ljava/lang/Double;",
            "Ljava8/util/OptionalDouble;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final FIRST_DOUBLE:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava8/util/OptionalDouble;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIRST_INT:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava8/util/OptionalInt;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIRST_LONG:Ljava8/util/stream/TerminalOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava8/util/OptionalLong;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIRST_REF:Ljava8/util/stream/TerminalOp;

.field private static final INT_IS_PRESENT:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "Ljava8/util/OptionalInt;",
            ">;"
        }
    .end annotation
.end field

.field private static final INT_SINK_SUPP:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/TerminalSink<",
            "Ljava/lang/Integer;",
            "Ljava8/util/OptionalInt;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LONG_IS_PRESENT:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "Ljava8/util/OptionalLong;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_SINK_SUPP:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/TerminalSink<",
            "Ljava/lang/Long;",
            "Ljava8/util/OptionalLong;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final REF_IS_PRESENT:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "Ljava8/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final REF_SINK_SUPP:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/TerminalSink<",
            "Ljava/lang/Object;",
            "Ljava8/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 49
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$1;->lambdaFactory$()Ljava8/util/function/Predicate;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->REF_IS_PRESENT:Ljava8/util/function/Predicate;

    .line 50
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$2;->lambdaFactory$()Ljava8/util/function/Predicate;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->INT_IS_PRESENT:Ljava8/util/function/Predicate;

    .line 51
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$3;->lambdaFactory$()Ljava8/util/function/Predicate;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->LONG_IS_PRESENT:Ljava8/util/function/Predicate;

    .line 52
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$4;->lambdaFactory$()Ljava8/util/function/Predicate;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->DOUBLE_IS_PRESENT:Ljava8/util/function/Predicate;

    .line 53
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$5;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->REF_SINK_SUPP:Ljava8/util/function/Supplier;

    .line 54
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$6;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->INT_SINK_SUPP:Ljava8/util/function/Supplier;

    .line 55
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$7;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->LONG_SINK_SUPP:Ljava8/util/function/Supplier;

    .line 56
    invoke-static {}, Ljava8/util/stream/FindOps$$Lambda$8;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    sput-object v0, Ljava8/util/stream/FindOps;->DOUBLE_SINK_SUPP:Ljava8/util/function/Supplier;

    .line 59
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    invoke-static {}, Ljava8/util/Optional;->empty()Ljava8/util/Optional;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/FindOps;->REF_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v6, Ljava8/util/stream/FindOps;->REF_SINK_SUPP:Ljava8/util/function/Supplier;

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->FIRST_REF:Ljava8/util/stream/TerminalOp;

    .line 62
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v9, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    invoke-static {}, Ljava8/util/Optional;->empty()Ljava8/util/Optional;

    move-result-object v10

    sget-object v11, Ljava8/util/stream/FindOps;->REF_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v12, Ljava8/util/stream/FindOps;->REF_SINK_SUPP:Ljava8/util/function/Supplier;

    const/4 v8, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->ANY_REF:Ljava8/util/stream/TerminalOp;

    .line 64
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v3, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    .line 65
    invoke-static {}, Ljava8/util/OptionalInt;->empty()Ljava8/util/OptionalInt;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/FindOps;->INT_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v6, Ljava8/util/stream/FindOps;->INT_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->FIRST_INT:Ljava8/util/stream/TerminalOp;

    .line 66
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v9, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    .line 67
    invoke-static {}, Ljava8/util/OptionalInt;->empty()Ljava8/util/OptionalInt;

    move-result-object v10

    sget-object v11, Ljava8/util/stream/FindOps;->INT_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v12, Ljava8/util/stream/FindOps;->INT_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->ANY_INT:Ljava8/util/stream/TerminalOp;

    .line 68
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    .line 69
    invoke-static {}, Ljava8/util/OptionalLong;->empty()Ljava8/util/OptionalLong;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/FindOps;->LONG_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v6, Ljava8/util/stream/FindOps;->LONG_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->FIRST_LONG:Ljava8/util/stream/TerminalOp;

    .line 70
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v9, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    .line 71
    invoke-static {}, Ljava8/util/OptionalLong;->empty()Ljava8/util/OptionalLong;

    move-result-object v10

    sget-object v11, Ljava8/util/stream/FindOps;->LONG_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v12, Ljava8/util/stream/FindOps;->LONG_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->ANY_LONG:Ljava8/util/stream/TerminalOp;

    .line 72
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v3, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    .line 73
    invoke-static {}, Ljava8/util/OptionalDouble;->empty()Ljava8/util/OptionalDouble;

    move-result-object v4

    sget-object v5, Ljava8/util/stream/FindOps;->DOUBLE_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v6, Ljava8/util/stream/FindOps;->DOUBLE_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->FIRST_DOUBLE:Ljava8/util/stream/TerminalOp;

    .line 74
    new-instance v0, Ljava8/util/stream/FindOps$FindOp;

    sget-object v9, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    .line 75
    invoke-static {}, Ljava8/util/OptionalDouble;->empty()Ljava8/util/OptionalDouble;

    move-result-object v10

    sget-object v11, Ljava8/util/stream/FindOps;->DOUBLE_IS_PRESENT:Ljava8/util/function/Predicate;

    sget-object v12, Ljava8/util/stream/FindOps;->DOUBLE_SINK_SUPP:Ljava8/util/function/Supplier;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ljava8/util/stream/FindOps$FindOp;-><init>(ZLjava8/util/stream/StreamShape;Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/Supplier;)V

    sput-object v0, Ljava8/util/stream/FindOps;->ANY_DOUBLE:Ljava8/util/stream/TerminalOp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(Z)Ljava8/util/stream/TerminalOp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava8/util/OptionalDouble;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 120
    sget-object p0, Ljava8/util/stream/FindOps;->FIRST_DOUBLE:Ljava8/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava8/util/stream/FindOps;->ANY_DOUBLE:Ljava8/util/stream/TerminalOp;

    :goto_0
    return-object p0
.end method

.method public static makeInt(Z)Ljava8/util/stream/TerminalOp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava8/util/OptionalInt;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 98
    sget-object p0, Ljava8/util/stream/FindOps;->FIRST_INT:Ljava8/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava8/util/stream/FindOps;->ANY_INT:Ljava8/util/stream/TerminalOp;

    :goto_0
    return-object p0
.end method

.method public static makeLong(Z)Ljava8/util/stream/TerminalOp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava8/util/OptionalLong;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 109
    sget-object p0, Ljava8/util/stream/FindOps;->FIRST_LONG:Ljava8/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava8/util/stream/FindOps;->ANY_LONG:Ljava8/util/stream/TerminalOp;

    :goto_0
    return-object p0
.end method

.method public static makeRef(Z)Ljava8/util/stream/TerminalOp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Ljava8/util/stream/TerminalOp<",
            "TT;",
            "Ljava8/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 87
    sget-object p0, Ljava8/util/stream/FindOps;->FIRST_REF:Ljava8/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava8/util/stream/FindOps;->ANY_REF:Ljava8/util/stream/TerminalOp;

    :goto_0
    return-object p0
.end method
