.class Lcom/miui/home/launcher/ShortcutIcon$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ShortcutIcon;->startLoading([Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ShortcutIcon;

.field final synthetic val$item2AnimOut:Landroid/animation/ObjectAnimator;

.field final synthetic val$item3AnimIn:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$2;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon$2;->val$item2AnimOut:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/miui/home/launcher/ShortcutIcon$2;->val$item3AnimIn:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 138
    invoke-static {}, Lcom/miui/home/launcher/ShortcutIcon;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$2;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/ShortcutIcon;->access$100(Lcom/miui/home/launcher/ShortcutIcon;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$2;->val$item2AnimOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 140
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$2;->val$item3AnimIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method
