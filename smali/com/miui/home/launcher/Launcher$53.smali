.class Lcom/miui/home/launcher/Launcher$53;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->hideSceneScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$sceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 5311
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$53;->val$sceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5313
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$53;->val$sceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->onHideAnimationEnd()V

    .line 5314
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$7102(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 5315
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$53;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$53;->val$sceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$7500(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method
