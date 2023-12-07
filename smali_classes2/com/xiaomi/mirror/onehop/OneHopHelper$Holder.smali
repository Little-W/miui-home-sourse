.class public Lcom/xiaomi/mirror/onehop/OneHopHelper$Holder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/onehop/OneHopHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaomi/mirror/onehop/OneHopHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mirror/onehop/OneHopHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/mirror/onehop/OneHopHelper;-><init>(Lcom/xiaomi/mirror/onehop/OneHopHelper$1;)V

    sput-object v0, Lcom/xiaomi/mirror/onehop/OneHopHelper$Holder;->sInstance:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/xiaomi/mirror/onehop/OneHopHelper;
    .locals 1

    sget-object v0, Lcom/xiaomi/mirror/onehop/OneHopHelper$Holder;->sInstance:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    return-object v0
.end method
