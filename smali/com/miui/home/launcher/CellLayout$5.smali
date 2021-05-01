.class Lcom/miui/home/launcher/CellLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellLayout;->doEditModeAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$5;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 461
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout$5;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->onNormalEditAnimationExitEnd()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 466
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout$5;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/CellScreen;->onNormalEditAnimationStart()V

    return-void
.end method
