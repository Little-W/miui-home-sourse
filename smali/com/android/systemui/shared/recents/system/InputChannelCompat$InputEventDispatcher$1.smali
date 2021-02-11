.class Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher$1;
.super Landroid/view/InputEventSender;
.source "InputChannelCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher$1;->this$0:Lcom/android/systemui/shared/recents/system/InputChannelCompat$InputEventDispatcher;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventSender;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method
