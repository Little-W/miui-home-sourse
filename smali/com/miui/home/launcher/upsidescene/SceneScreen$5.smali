.class Lcom/miui/home/launcher/upsidescene/SceneScreen$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SceneScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SceneScreen;->exitEditModeInner(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 610
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$700(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/upsidescene/EditModeBottomBar;->setVisibility(I)V

    .line 611
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$5;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$600(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method
