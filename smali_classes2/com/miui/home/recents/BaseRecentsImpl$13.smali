.class Lcom/miui/home/recents/BaseRecentsImpl$13;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/miui/home/recents/BaseRecentsImpl$13;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1700(Lcom/miui/home/recents/BaseRecentsImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const-string v0, "com.miui.home.launcher.Launcher:com.miui.personalassistant.fake.FakeStartActivity:com.miui.personalassistant.fake.FakeEndActivity"

    invoke-static {p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1784(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1784(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Object;)Ljava/lang/String;

    .line 805
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "com.miui.circulate.world.AppCirculateActivity:com.miui.circulate.world.CirculateWorldActivity:com.iflytek.inputmethod.input.view.display.guide.deatchkeyboard.MIDetachKeyboardGuideActivity"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1802(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 806
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1, p3}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1902(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 807
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const-string p2, "com.android.systemui.fsgesture.DemoIntroduceAct:com.android.systemui.sliderpanel.SliderPanelActivity:com.miui.freeform.FreeformDemoIntroduceActivity:com.miui.freeform.FreeformDemoActivity:com.miui.freeform.FreeformDemoFinishActivity:com.miui.miservice.main.update.UpdateGuideActivity:com.miui.miservice.main.update.UpdateDetailActivity:com.xiaomi.market.ui.OtaRecommendActivity:com.miui.miservice.main.update.UpdateEndActivity"

    invoke-static {p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1984(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 791
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$200(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ykrq"

    const-string v2, "no_back_gesture_only"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$200(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ykrq"

    const-string v3, "no_home_gesture_only"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 795
    iget-object v2, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v2}, Lcom/miui/home/recents/BaseRecentsImpl;->access$200(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ykrq"

    const-string v4, "no_back_and_home"

    const-string v5, ""

    invoke-static {v2, v3, v4, v5}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 798
    iget-object v3, p0, Lcom/miui/home/recents/BaseRecentsImpl$13;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-object v3, v3, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$13$ynF6jhVmwaDYjUYXaMLpzGk3X_s;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$13$ynF6jhVmwaDYjUYXaMLpzGk3X_s;-><init>(Lcom/miui/home/recents/BaseRecentsImpl$13;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
