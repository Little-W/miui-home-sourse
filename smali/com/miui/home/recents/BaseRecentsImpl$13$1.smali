.class Lcom/miui/home/recents/BaseRecentsImpl$13$1;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/BaseRecentsImpl$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/recents/BaseRecentsImpl$13;

.field final synthetic val$hotZoneChangeActListStr:Ljava/lang/String;

.field final synthetic val$noBackActListStr:Ljava/lang/String;

.field final synthetic val$noBackAndHomeActListStr:Ljava/lang/String;

.field final synthetic val$noHomeActListStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl$13;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->this$1:Lcom/miui/home/recents/BaseRecentsImpl$13;

    iput-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->val$noBackActListStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->val$noHomeActListStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->val$noBackAndHomeActListStr:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->val$hotZoneChangeActListStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->this$1:Lcom/miui/home/recents/BaseRecentsImpl$13;

    iget-object v0, v0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->val$noBackActListStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1602(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->this$1:Lcom/miui/home/recents/BaseRecentsImpl$13;

    iget-object v0, v0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1600(Lcom/miui/home/recents/BaseRecentsImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->this$1:Lcom/miui/home/recents/BaseRecentsImpl$13;

    iget-object v0, v0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const-string v1, "com.miui.home.launcher.Launcher:com.miui.personalassistant.fake.FakeStartActivity:com.miui.personalassistant.fake.FakeEndActivity"

    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1602(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->this$1:Lcom/miui/home/recents/BaseRecentsImpl$13;

    iget-object v0, v0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->val$noHomeActListStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1702(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->this$1:Lcom/miui/home/recents/BaseRecentsImpl$13;

    iget-object v0, v0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->val$noBackAndHomeActListStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1802(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 757
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->this$1:Lcom/miui/home/recents/BaseRecentsImpl$13;

    iget-object v0, v0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->val$hotZoneChangeActListStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1902(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 758
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->this$1:Lcom/miui/home/recents/BaseRecentsImpl$13;

    iget-object v0, v0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl$13$1;->this$1:Lcom/miui/home/recents/BaseRecentsImpl$13;

    iget-object v2, v2, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1800(Lcom/miui/home/recents/BaseRecentsImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.android.systemui.fsgesture.DemoIntroduceAct:com.android.systemui.sliderpanel.SliderPanelActivity:com.miui.freeform.FreeformDemoIntroduceActivity:com.miui.freeform.FreeformDemoActivity:com.miui.freeform.FreeformDemoFinishActivity:com.miui.miservice.main.update.UpdateGuideActivity:com.miui.miservice.main.update.UpdateDetailActivity:com.xiaomi.market.ui.OtaRecommendActivity:com.miui.miservice.main.update.UpdateEndActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1802(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
