.class Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1$1;
.super Ljava/lang/Object;
.source "SmallWindowStateHelperUseSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1$1;->this$1:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1$1;->this$1:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;

    iget-object v0, v0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-virtual {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->isInSmallWindowMode()Z

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1$1;->this$1:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;

    iget-object v1, v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-virtual {v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowState()V

    .line 48
    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1$1;->this$1:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;

    iget-object v1, v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-virtual {v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->isInSmallWindowMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 49
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1$1;->this$1:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;

    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mSmallWindowStateCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;

    xor-int/lit8 v2, v0, 0x1

    .line 50
    invoke-interface {v1, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;->onEnterOrExitSmallWindow(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
