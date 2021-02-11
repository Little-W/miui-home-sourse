.class final Lmiuix/animation/internal/AnimRunner$1;
.super Landroid/os/Handler;
.source "AnimRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/internal/AnimRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->access$000()V

    return-void

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
