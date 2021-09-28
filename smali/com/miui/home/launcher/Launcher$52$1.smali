.class Lcom/miui/home/launcher/Launcher$52$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher$52;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Launcher$52;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher$52;)V
    .locals 0

    .line 5023
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$52$1;->this$1:Lcom/miui/home/launcher/Launcher$52;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 5025
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$52$1;->this$1:Lcom/miui/home/launcher/Launcher$52;

    iget-object p1, p1, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSceneScreen()Lcom/miui/home/launcher/upsidescene/SceneScreen;

    move-result-object p1

    .line 5026
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$52$1;->this$1:Lcom/miui/home/launcher/Launcher$52;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$3500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/FitSystemWindowView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FitSystemWindowView;->setVisibility(I)V

    .line 5027
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onShowAnimationEnd()V

    .line 5028
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$52$1;->this$1:Lcom/miui/home/launcher/Launcher$52;

    iget-object v0, v0, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/home/launcher/Launcher;->access$7302(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 5029
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->notifyGadgets(I)V

    .line 5030
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$52$1;->this$1:Lcom/miui/home/launcher/Launcher$52;

    iget-object p1, p1, Lcom/miui/home/launcher/Launcher$52;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v2}, Lcom/miui/home/launcher/Launcher;->access$7400(Lcom/miui/home/launcher/Launcher;Z)Z

    return-void
.end method
