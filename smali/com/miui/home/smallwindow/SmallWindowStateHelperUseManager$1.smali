.class Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;
.super Lmiui/app/IFreeformCallback$Stub;
.source "SmallWindowStateHelperUseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-direct {p0}, Lmiui/app/IFreeformCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "SmallWindowStateHelper"

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchFreeFormStackModeChanged action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stackInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    iget-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-virtual {p2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowState()V

    .line 41
    iget-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {p2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V

    .line 42
    iget-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    iget-object p2, p2, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->mSmallWindowStateCallbacks:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;

    .line 43
    invoke-interface {v0, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelper$SmallWindowStateCallback;->onEnterOrExitSmallWindow(Z)V

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
