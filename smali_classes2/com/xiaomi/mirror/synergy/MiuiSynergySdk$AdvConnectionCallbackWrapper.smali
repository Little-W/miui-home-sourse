.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;
.super Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdvConnectionCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;


# direct methods
.method private constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-direct {p0}, Lcom/xiaomi/mirror/IMirrorAdvConnectionCallback$Stub;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public onLost()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$802(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;

    invoke-interface {p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$AdvConnectionCallback;->onAdvConnectionLost()V

    :cond_0
    return-void
.end method
