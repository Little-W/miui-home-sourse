.class final synthetic Ljava8/util/Comparators$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# instance fields
.field private final arg$1:Ljava/util/Comparator;

.field private final arg$2:Ljava8/util/function/Function;


# direct methods
.method private constructor <init>(Ljava/util/Comparator;Ljava8/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Comparators$$Lambda$1;->arg$1:Ljava/util/Comparator;

    iput-object p2, p0, Ljava8/util/Comparators$$Lambda$1;->arg$2:Ljava8/util/function/Function;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/Comparator;Ljava8/util/function/Function;)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Ljava8/util/Comparators$$Lambda$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/Comparators$$Lambda$1;-><init>(Ljava/util/Comparator;Ljava8/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Ljava8/util/Comparators$$Lambda$1;->arg$1:Ljava/util/Comparator;

    iget-object v1, p0, Ljava8/util/Comparators$$Lambda$1;->arg$2:Ljava8/util/function/Function;

    invoke-static {v0, v1, p1, p2}, Ljava8/util/Comparators;->lambda$comparing$b1478148$1(Ljava/util/Comparator;Ljava8/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
