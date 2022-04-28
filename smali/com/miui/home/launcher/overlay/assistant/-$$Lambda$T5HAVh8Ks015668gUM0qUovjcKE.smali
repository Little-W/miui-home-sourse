.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$T5HAVh8Ks015668gUM0qUovjcKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$T5HAVh8Ks015668gUM0qUovjcKE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$T5HAVh8Ks015668gUM0qUovjcKE;

    invoke-direct {v0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$T5HAVh8Ks015668gUM0qUovjcKE;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$T5HAVh8Ks015668gUM0qUovjcKE;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$T5HAVh8Ks015668gUM0qUovjcKE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getProductId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
