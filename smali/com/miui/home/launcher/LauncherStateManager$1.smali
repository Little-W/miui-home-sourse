.class Lcom/miui/home/launcher/LauncherStateManager$1;
.super Ljava/lang/Object;
.source "LauncherStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherStateManager;->setWindowLauncherState(Lcom/miui/home/launcher/LauncherState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherStateManager;

.field final synthetic val$finalState:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherStateManager;I)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$1;->this$0:Lcom/miui/home/launcher/LauncherStateManager;

    iput p2, p0, Lcom/miui/home/launcher/LauncherStateManager$1;->val$finalState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherStateManager$1;->this$0:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherStateManager;->access$200(Lcom/miui/home/launcher/LauncherStateManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_state"

    iget v2, p0, Lcom/miui/home/launcher/LauncherStateManager$1;->val$finalState:I

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->putIntToSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
