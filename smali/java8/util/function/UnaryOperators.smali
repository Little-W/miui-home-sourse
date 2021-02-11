.class public final Ljava8/util/function/UnaryOperators;
.super Ljava/lang/Object;
.source "UnaryOperators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static identity()Ljava8/util/function/UnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/function/UnaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 40
    invoke-static {}, Ljava8/util/function/UnaryOperators$$Lambda$1;->lambdaFactory$()Ljava8/util/function/UnaryOperator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$identity$144(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
