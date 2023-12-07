.class Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;
.super Ljava/lang/Object;
.source "ClockGadgetDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->onMamlCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

.field final synthetic val$strPara:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iput-object p2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->val$strPara:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "CLICK"

    .line 341
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iget-object v1, v1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object v1, v1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$900(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iget-object v1, v1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object v1, v1, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gadget_ex_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$900(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$1100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " CLICK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$900(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " btn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->val$strPara:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.ClockGadgetDelegate"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :try_start_0
    invoke-static {v0}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v2

    const-string v3, "ex"

    .line 347
    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v1, "e"

    .line 348
    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v0, "btn"

    .line 349
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->val$strPara:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 350
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {p0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$000(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/xiaomi/analytics/Analytics;->trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 352
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
