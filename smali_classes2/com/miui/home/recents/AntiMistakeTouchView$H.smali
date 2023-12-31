.class Lcom/miui/home/recents/AntiMistakeTouchView$H;
.super Landroid/os/Handler;
.source "AntiMistakeTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/AntiMistakeTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/recents/AntiMistakeTouchView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/AntiMistakeTouchView;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView$H;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/AntiMistakeTouchView;Lcom/miui/home/recents/AntiMistakeTouchView$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/home/recents/AntiMistakeTouchView$H;-><init>(Lcom/miui/home/recents/AntiMistakeTouchView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    iget-object v0, p0, Lcom/miui/home/recents/AntiMistakeTouchView$H;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/AntiMistakeTouchView$H;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/AntiMistakeTouchView;

    invoke-static {p0}, Lcom/miui/home/recents/AntiMistakeTouchView;->access$000(Lcom/miui/home/recents/AntiMistakeTouchView;)V

    :cond_2
    :goto_0
    return-void
.end method
