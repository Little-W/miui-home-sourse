.class Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;
.super Lmiui/app/IFreeformCallback$Stub;
.source "SmallWindowStateHelperUseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->init(Landroid/content/Context;ZZZZ)V
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

    .line 43
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-direct {p0}, Lmiui/app/IFreeformCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchFreeFormStackModeChanged action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stackInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SmallWindowStateHelper"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;ZI)V

    goto :goto_0

    .line 53
    :cond_1
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)V

    .line 60
    :cond_2
    :pswitch_1
    iget-object p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {p0, p2, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;ZI)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
