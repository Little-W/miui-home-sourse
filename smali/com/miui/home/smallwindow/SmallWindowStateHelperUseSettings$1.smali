.class Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;
.super Landroid/database/ContentObserver;
.source "SmallWindowStateHelperUseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Landroid/os/Handler;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    iget-object p1, p1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mBackgroundExecutor:Lcom/miui/home/smallwindow/BackgroundExecutor;

    new-instance v0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1$1;

    invoke-direct {v0, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1$1;-><init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/smallwindow/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
