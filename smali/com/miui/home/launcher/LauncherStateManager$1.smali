.class Lcom/miui/home/launcher/LauncherStateManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherStateManager;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherStateManager;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherStateManager$1;->this$0:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$1;->this$0:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherStateManager;->access$200(Lcom/miui/home/launcher/LauncherStateManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateShortcutMenuLayerTypeWhenMenuShow(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherStateManager$1;->this$0:Lcom/miui/home/launcher/LauncherStateManager;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherStateManager;->access$200(Lcom/miui/home/launcher/LauncherStateManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->updateShortcutMenuLayerTypeWhenMenuShow(I)V

    return-void
.end method
