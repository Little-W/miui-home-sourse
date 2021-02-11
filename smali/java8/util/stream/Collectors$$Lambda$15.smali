.class final synthetic Ljava8/util/stream/Collectors$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# static fields
.field private static final instance:Ljava8/util/stream/Collectors$$Lambda$15;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$15;

    invoke-direct {v0}, Ljava8/util/stream/Collectors$$Lambda$15;-><init>()V

    sput-object v0, Ljava8/util/stream/Collectors$$Lambda$15;->instance:Ljava8/util/stream/Collectors$$Lambda$15;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/Supplier;
    .locals 1

    sget-object v0, Ljava8/util/stream/Collectors$$Lambda$15;->instance:Ljava8/util/stream/Collectors$$Lambda$15;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method
