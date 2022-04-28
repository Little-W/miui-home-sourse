.class Lcom/miui/home/launcher/CellBackground$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellBackground;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellBackground;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground$1;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground$1;->this$0:Lcom/miui/home/launcher/CellBackground;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setTranslationX(F)V

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground$1;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/CellBackground;->setTranslationY(F)V

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground$1;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-static {p1}, Lcom/miui/home/launcher/CellBackground;->access$000(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground$1;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-static {p1}, Lcom/miui/home/launcher/CellBackground;->access$000(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
