.class Lcom/miui/home/launcher/CellLayout$3;
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

    .line 414
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$3;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 422
    iget-object p1, p0, Lcom/miui/home/launcher/CellLayout$3;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/CellLayout;->access$300(Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 417
    invoke-static {p1}, Lcom/miui/home/launcher/AutoLayoutAnimation;->setDisableAutoLayoutAnimation(Z)V

    return-void
.end method
