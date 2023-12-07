.class public Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;->mInputChannel:Landroid/view/InputChannel;

    new-instance v0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher$1;-><init>(Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;->mSender:Landroid/view/InputEventSender;

    return-void
.end method


# virtual methods
.method public dispatch(Landroid/view/InputEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;->mSender:Landroid/view/InputEventSender;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/InputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;->mSender:Landroid/view/InputEventSender;

    invoke-virtual {v0}, Landroid/view/InputEventSender;->dispose()V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return-void
.end method
