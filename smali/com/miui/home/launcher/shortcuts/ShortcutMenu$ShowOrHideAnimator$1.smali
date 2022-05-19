.class Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShortcutMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;-><init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

.field final synthetic val$this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;Lcom/miui/home/launcher/shortcuts/ShortcutMenu;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator$1;->this$1:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    iput-object p2, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator$1;->val$this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 495
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator$1;->this$1:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getCurrent()F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator$1;->this$1:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->getStart()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    .line 496
    iget-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator$1;->this$1:Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;

    iget-object p1, p1, Lcom/miui/home/launcher/shortcuts/ShortcutMenu$ShowOrHideAnimator;->this$0:Lcom/miui/home/launcher/shortcuts/ShortcutMenu;

    invoke-virtual {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenu;->reset()V

    :cond_0
    return-void
.end method
