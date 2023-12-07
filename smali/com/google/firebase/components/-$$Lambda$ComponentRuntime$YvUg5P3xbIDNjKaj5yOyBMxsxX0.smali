.class public final synthetic Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$YvUg5P3xbIDNjKaj5yOyBMxsxX0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$YvUg5P3xbIDNjKaj5yOyBMxsxX0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$YvUg5P3xbIDNjKaj5yOyBMxsxX0;

    invoke-direct {v0}, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$YvUg5P3xbIDNjKaj5yOyBMxsxX0;-><init>()V

    sput-object v0, Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$YvUg5P3xbIDNjKaj5yOyBMxsxX0;->INSTANCE:Lcom/google/firebase/components/-$$Lambda$ComponentRuntime$YvUg5P3xbIDNjKaj5yOyBMxsxX0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/firebase/components/ComponentRuntime;->lambda$YvUg5P3xbIDNjKaj5yOyBMxsxX0()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
