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

    .line 37
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

    .line 41
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

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 57
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Z)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 53
    iget-object p2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$1;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {p2, p1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
