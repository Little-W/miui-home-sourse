.class Lcom/miui/home/launcher/ProgressShortcutIcon$1;
.super Ljava/lang/Object;
.source "ProgressShortcutIcon.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ProgressShortcutIcon;->startAfterDropAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ProgressShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ProgressShortcutIcon;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon$1;->this$0:Lcom/miui/home/launcher/ProgressShortcutIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 390
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon$1;->this$0:Lcom/miui/home/launcher/ProgressShortcutIcon;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->access$002(Lcom/miui/home/launcher/ProgressShortcutIcon;Z)Z

    .line 391
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon$1;->this$0:Lcom/miui/home/launcher/ProgressShortcutIcon;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->access$102(Lcom/miui/home/launcher/ProgressShortcutIcon;F)F

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 384
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon$1;->this$0:Lcom/miui/home/launcher/ProgressShortcutIcon;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->access$002(Lcom/miui/home/launcher/ProgressShortcutIcon;Z)Z

    .line 385
    iget-object p1, p0, Lcom/miui/home/launcher/ProgressShortcutIcon$1;->this$0:Lcom/miui/home/launcher/ProgressShortcutIcon;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->access$102(Lcom/miui/home/launcher/ProgressShortcutIcon;F)F

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
