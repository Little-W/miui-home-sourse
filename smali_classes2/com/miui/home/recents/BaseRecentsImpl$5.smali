.class Lcom/miui/home/recents/BaseRecentsImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/BaseRecentsImpl$5$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$5;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/BaseRecentsImpl$5;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$5;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 316
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.xiaomi.vtcamera"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    const-string v0, "enter"

    .line 317
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVTCameraReceiver: isEnter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sput-boolean p0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraEnabled:Z

    if-eqz p0, :cond_0

    const-string p0, "deviceName"

    .line 321
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraDeviceName:Ljava/lang/String;

    const-string p0, "text"

    .line 322
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraTaskText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 324
    sput-object p0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraDeviceName:Ljava/lang/String;

    .line 325
    sput-object p0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraTaskText:Ljava/lang/String;

    .line 327
    :goto_0
    sget-boolean p0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraEnabled:Z

    const-string p2, "key_vt_camera_on"

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 328
    sget-object p0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraDeviceName:Ljava/lang/String;

    const-string p2, "key_vt_camera_device_name"

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object p0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraTaskText:Ljava/lang/String;

    const-string p2, "key_vt_camera_text"

    invoke-static {p1, p2, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$5$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/recents/BaseRecentsImpl$5;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
