.class Lcom/miui/home/launcher/Launcher$78;
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


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 8008
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$78;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8011
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Launcher"

    const-string v1, "reset shortcutMenuLayer alpha and scale"

    .line 8012
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8013
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$78;->this$0:Lcom/miui/home/launcher/Launcher;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v1}, Lcom/miui/home/launcher/Launcher;->access$9900(Lcom/miui/home/launcher/Launcher;FF)V

    :cond_0
    return-void
.end method
