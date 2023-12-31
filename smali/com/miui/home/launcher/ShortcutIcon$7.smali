.class Lcom/miui/home/launcher/ShortcutIcon$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ShortcutIcon;->initShowOrHideCheckBoxAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$7;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 409
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$7;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/ShortcutIcon;->access$400(Lcom/miui/home/launcher/ShortcutIcon;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 410
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$7;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    .line 411
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$7;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/ShortcutIcon;->mEditModeCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 413
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutIcon$7;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/ShortcutIcon;->access$300(Lcom/miui/home/launcher/ShortcutIcon;)V

    :cond_1
    return-void
.end method
