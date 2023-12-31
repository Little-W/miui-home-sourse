.class Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;
.super Ljava/lang/Object;
.source "BoomAnimHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->iconBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$shortcutInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$shortcutInfos:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$animEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BOOM#START"

    .line 175
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$shortcutInfos:Ljava/util/List;

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$3;->val$animEndRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper;->doBoomAnim(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 177
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
