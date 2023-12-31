.class public Lcom/miui/home/library/mirror/MirrorManagerCompat;
.super Ljava/lang/Object;
.source "MirrorManagerCompat.java"


# static fields
.field private static sInstance:Lcom/miui/home/library/mirror/MirrorManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mMirrorManager:Lcom/xiaomi/mirror/MirrorManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/home/library/mirror/MirrorManagerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mirror/MirrorManagerImpl;->get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManagerImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/library/mirror/MirrorManagerCompat;->mMirrorManager:Lcom/xiaomi/mirror/MirrorManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;
    .locals 2

    .line 18
    sget-object v0, Lcom/miui/home/library/mirror/MirrorManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/miui/home/library/mirror/MirrorManagerCompat;->sInstance:Lcom/miui/home/library/mirror/MirrorManagerCompat;

    if-nez v1, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 23
    :cond_0
    new-instance v1, Lcom/miui/home/library/mirror/MirrorManagerCompat;

    invoke-direct {v1, p0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/home/library/mirror/MirrorManagerCompat;->sInstance:Lcom/miui/home/library/mirror/MirrorManagerCompat;

    .line 25
    :cond_1
    sget-object p0, Lcom/miui/home/library/mirror/MirrorManagerCompat;->sInstance:Lcom/miui/home/library/mirror/MirrorManagerCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setDragListener(Landroid/view/View;Landroid/view/View$OnDragListener;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/miui/home/library/mirror/MirrorManagerCompat;->mMirrorManager:Lcom/xiaomi/mirror/MirrorManagerImpl;

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    return-void
.end method

.method private setMirrorMenuQueryListener(Landroid/view/View;Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/library/mirror/MirrorManagerCompat;->mMirrorManager:Lcom/xiaomi/mirror/MirrorManagerImpl;

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mirror/MirrorManagerImpl;->setOnMirrorMenuQueryListener(Landroid/view/View;Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyStartActivity(Landroid/content/Intent;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/home/library/mirror/MirrorManagerCompat;->mMirrorManager:Lcom/xiaomi/mirror/MirrorManagerImpl;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/xiaomi/mirror/MirrorManagerImpl;->notifyStartActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public notifyStartActivityFromRecents(ILandroid/os/Bundle;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/miui/home/library/mirror/MirrorManagerCompat;->mMirrorManager:Lcom/xiaomi/mirror/MirrorManagerImpl;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mirror/MirrorManagerImpl;->notifyStartActivityFromRecents(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setDragListener(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lcom/miui/home/library/mirror/MirrorContextView;",
            ">(TV;)V"
        }
    .end annotation

    .line 51
    move-object v0, p1

    check-cast v0, Lcom/miui/home/library/mirror/MirrorContextView;

    invoke-interface {v0}, Lcom/miui/home/library/mirror/MirrorContextView;->getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setDragListener(Landroid/view/View;Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public setMirrorMenuListener(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ":",
            "Lcom/miui/home/library/mirror/MirrorContextView;",
            ">(TV;)V"
        }
    .end annotation

    .line 41
    move-object v0, p1

    check-cast v0, Lcom/miui/home/library/mirror/MirrorContextView;

    invoke-interface {v0}, Lcom/miui/home/library/mirror/MirrorContextView;->getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuQueryListener(Landroid/view/View;Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;)V

    return-void
.end method
