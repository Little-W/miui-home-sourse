.class public final synthetic Lcom/google/firebase/components/-$$Lambda$OptionalProvider$V5P2P1pkwQDT7xyfdsKcTNI9lRw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/firebase/components/-$$Lambda$OptionalProvider$V5P2P1pkwQDT7xyfdsKcTNI9lRw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$V5P2P1pkwQDT7xyfdsKcTNI9lRw;

    invoke-direct {v0}, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$V5P2P1pkwQDT7xyfdsKcTNI9lRw;-><init>()V

    sput-object v0, Lcom/google/firebase/components/-$$Lambda$OptionalProvider$V5P2P1pkwQDT7xyfdsKcTNI9lRw;->INSTANCE:Lcom/google/firebase/components/-$$Lambda$OptionalProvider$V5P2P1pkwQDT7xyfdsKcTNI9lRw;

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

    invoke-static {}, Lcom/google/firebase/components/OptionalProvider;->lambda$static$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
