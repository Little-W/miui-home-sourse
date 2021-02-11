.class public Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;
.super Ljava/lang/Object;
.source "InputChannelCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/InputChannelCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputEventDispatcher"
.end annotation


# instance fields
.field private final mInputChannel:Landroid/view/InputChannel;

.field private final mSender:Landroid/view/InputEventSender;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;->mInputChannel:Landroid/view/InputChannel;

    .line 106
    new-instance v0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher$1;-><init>(Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;->mSender:Landroid/view/InputEventSender;

    return-void
.end method


# virtual methods
.method public dispatch(Landroid/view/InputEvent;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;->mSender:Landroid/view/InputEventSender;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/InputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;->mSender:Landroid/view/InputEventSender;

    invoke-virtual {v0}, Landroid/view/InputEventSender;->dispose()V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    return-void
.end method
