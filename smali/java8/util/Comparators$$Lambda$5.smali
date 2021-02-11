.class final synthetic Ljava8/util/Comparators$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# instance fields
.field private final arg$1:Ljava8/util/function/ToDoubleFunction;


# direct methods
.method private constructor <init>(Ljava8/util/function/ToDoubleFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Comparators$$Lambda$5;->arg$1:Ljava8/util/function/ToDoubleFunction;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Ljava8/util/Comparators$$Lambda$5;

    invoke-direct {v0, p0}, Ljava8/util/Comparators$$Lambda$5;-><init>(Ljava8/util/function/ToDoubleFunction;)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Ljava8/util/Comparators$$Lambda$5;->arg$1:Ljava8/util/function/ToDoubleFunction;

    invoke-static {v0, p1, p2}, Ljava8/util/Comparators;->lambda$comparingDouble$57709dbc$1(Ljava8/util/function/ToDoubleFunction;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
