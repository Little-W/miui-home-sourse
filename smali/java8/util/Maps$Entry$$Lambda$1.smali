.class final synthetic Ljava8/util/Maps$Entry$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Ljava8/util/Maps$Entry$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/Maps$Entry$$Lambda$1;

    invoke-direct {v0}, Ljava8/util/Maps$Entry$$Lambda$1;-><init>()V

    sput-object v0, Ljava8/util/Maps$Entry$$Lambda$1;->instance:Ljava8/util/Maps$Entry$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Ljava8/util/Maps$Entry$$Lambda$1;->instance:Ljava8/util/Maps$Entry$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {p1, p2}, Ljava8/util/Maps$Entry;->lambda$comparingByKey$bbdbfea9$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method
