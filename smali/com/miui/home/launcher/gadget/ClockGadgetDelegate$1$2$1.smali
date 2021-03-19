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

    .line 309
    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iput-object p2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->val$strPara:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$800(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gadget_ex_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iget-object v2, v2, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object v2, v2, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v2}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$800(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Launcher.ClockGadgetDelegate"

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$1000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " CLICK:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object v3, v3, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v3}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$800(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " btn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->val$strPara:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "CLICK"

    .line 316
    invoke-static {v1}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v1

    const-string v2, "ex"

    .line 317
    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v0, "e"

    const-string v2, "CLICK"

    .line 318
    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v0, "btn"

    .line 319
    iget-object v2, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->val$strPara:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    .line 320
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2$1;->this$2:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1$2;->this$1:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;

    iget-object v0, v0, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate$1;->this$0:Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$000(Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/gadget/ClockGadgetDelegate;->access$1000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaomi/analytics/Analytics;->trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
