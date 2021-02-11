.class Lcom/miui/home/launcher/Launcher$76;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Launcher$76$_lancet;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 7823
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$76;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 7826
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Launcher"

    const-string v1, "reset shortcutMenuLayer alpha and scale"

    .line 7827
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$76$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 7828
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$76;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v2}, Lcom/miui/home/launcher/Launcher;->access$10000(Lcom/miui/home/launcher/Launcher;Landroid/view/View;FF)V

    :cond_0
    return-void
.end method
