.class Lcom/miui/home/recents/TransitionAnimDurationHelper$1;
.super Landroid/database/ContentObserver;
.source "TransitionAnimDurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/TransitionAnimDurationHelper;->registerAnimDurationRatioObserver(Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/TransitionAnimDurationHelper;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/TransitionAnimDurationHelper;Landroid/os/Handler;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper$1;->this$0:Lcom/miui/home/recents/TransitionAnimDurationHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/miui/home/recents/TransitionAnimDurationHelper$1;->this$0:Lcom/miui/home/recents/TransitionAnimDurationHelper;

    invoke-static {p1}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->access$000(Lcom/miui/home/recents/TransitionAnimDurationHelper;)V

    return-void
.end method
